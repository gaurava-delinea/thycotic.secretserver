function Find-TssReport {
    <#
    .SYNOPSIS
    Find a report.

    .DESCRIPTION
    Find a report.

    .EXAMPLE
    $session = New-TssSession -SecretServer https://alpha -Credential $ssCred
    Find-TssReport -TssSession $session -CategoryId 1234

    Return a list of Reports found in Category ID 1234.

    .EXAMPLE
    $session = New-TssSession -SecretServer https://alpha -Credential $ssCred
    Find-TssReport -TssSession $session -SearchText secret

    Return a list of Reports found with "secret" in the name.

    .LINK
    https://thycotic-ps.github.io/thycotic.secretserver/commands/Find-TssReport

    .LINK
    https://github.com/thycotic-ps/thycotic.secretserver/blob/main/src/functions/reports/Find-TssReport.ps1

    .NOTES
    Requires TssSession object returned by New-TssSession
    #>
    [CmdletBinding()]
    [OutputType('Thycotic.PowerShell.Reports.Lookup')]
    param (
        # TssSession object created by New-TssSession for authentication
        [Parameter(Mandatory, ValueFromPipeline, Position = 0)]
        [Thycotic.PowerShell.Authentication.Session]
        $TssSession,

        # Category ID tp search
        [int]
        $CategoryId,

        # Include Inactive Reports
        [switch]
        $IncludeInactive,

        # Name of Report
        [string]
        $Name,

        # Search text
        [string]
        $SearchText
    )
    begin {
        $tssParams = $PSBoundParameters
        $invokeParams = . $GetInvokeApiParams $TssSession
    }
    process {
        Write-Verbose "Provided command parameters: $(. $GetInvocation $PSCmdlet.MyInvocation)"
        if ($tssParams.ContainsKey('TssSession') -and $TssSession.IsValidSession()) {
            . $CheckVersion $TssSession '10.9.000000' $PSCmdlet.MyInvocation
            $uri = $TssSession.ApiUrl, 'reports', 'lookup' -join '/'
            $uri = $uri, "&take=$($TssSession.Take)" -join '?'
            $invokeParams.Method = 'GET'

            $filters = @()
            switch ($tssParams.Keys) {
                'CategoryId' {
                    $filters += "filter.categoryId=$CategoryId"
                }
                'IncludeInactive' {
                    $filters += "filter.includeInactive=$([boolean]$IncludeInactive)"
                }
                'Name' {
                    $filters += "filter.reportName=$Name"
                }
                'SearchText' {
                    $filters += "filter.searchText=$SearchText"
                }
            }
            $uriFilter = $filters -join '&'
            Write-Verbose "Filters: $uriFilter"
            $uri = $uri, $uriFilter -join '&'

            $invokeParams.Uri = $uri
            Write-Verbose "Performing the operation $($invokeParams.Method) $uri"
            try {
                $apiResponse = Invoke-TssApi @invokeParams
                $restResponse = . $ProcessResponse $apiResponse
            } catch {
                Write-Warning 'Issue on search request'
                $err = $_
                . $ErrorHandling $err
            }

            if ($restResponse.records) {
                [Thycotic.PowerShell.Reports.Lookup[]]$restResponse.records
            }
        } else {
            Write-Warning 'No valid session found'
        }
    }
}