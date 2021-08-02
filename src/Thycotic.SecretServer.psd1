@{
    ModuleVersion        = '0.50.0'
    CompatiblePSEditions = 'Desktop', 'Core'
    FormatsToProcess     = 'Thycotic.SecretServer.Format.ps1xml'
    TypesToProcess       = 'Thycotic.SecretServer.Types.ps1xml'
    RootModule           = 'Thycotic.SecretServer.psm1'
    NestedModules        = @("bin\Thycotic.SecretServer.dll")
    CmdletsToExport      = @("Start-TssLog","Stop-TssLog","Write-TssLog")
    FunctionsToExport    = @(
        'Invoke-TssRestApi',
        'Initialize-TssSdkClient',
        'New-TssSession',
        'Test-TssSdkClient',
        'Disable-TssUnlimitedAdmin',
        'Enable-TssUnlimitedAdmin',
        'Get-TssConfiguration',
        'Search-TssDirectoryServiceDomain',
        'Start-TssDiscovery',
        'Search-TssDistributedEngineSite',
        'Get-TssFolderPermission',
        'New-TssFolderPermission',
        'Remove-TssFolderPermission',
        'Search-TssFolderPermission',
        'Update-TssFolderPermission',
        'Add-TssFolderPermission',
        'Find-TssFolder',
        'Get-TssFolder',
        'Get-TssFolderAudit',
        'Get-TssFolderState',
        'New-TssFolder',
        'Remove-TssFolder',
        'Remove-TssFolderTemplate',
        'Search-TssFolder',
        'Set-TssFolder',
        'Test-TssFolderAction',
        'Update-TssFolder',
        'Add-TssGroupMember',
        'Find-TssGroup',
        'Get-TssGroup',
        'Get-TssGroupMember',
        'Get-TssGroupRole',
        'Get-TssGroupUser',
        'New-TssGroup',
        'Remove-TssGroupMember',
        'Search-TssGroup',
        'Update-TssGroupMember',
        'Search-TssMetadata',
        'Export-TssReport',
        'Find-TssReport',
        'Get-TssReport',
        'Get-TssReportCategory',
        'Get-TssReportParameter',
        'Invoke-TssReport',
        'New-TssReport',
        'Remove-TssReport',
        'Remove-TssReportCategory',
        'Search-TssReport',
        'Search-TssReportSchedule',
        'Search-TssRole',
        'Get-TssRpcAssociatedSecret',
        'Get-TssRpcPasswordType',
        'Search-TssRpcPasswordType',
        'Get-TssScript',
        'Search-TssScript',
        'Get-TssSecretAccessRequestOption',
        'Get-TssSecretAccessRequestSecret',
        'Get-TssSecretDependency',
        'Get-TssSecretDependencyGroup',
        'Get-TssSecretDependencyRunStatus',
        'Get-TssSecretDependencyStub',
        'Get-TssSecretDependencyTemplate',
        'New-TssSecretDependency',
        'New-TssSecretDependencyGroup',
        'Remove-TssSecretDependency',
        'Search-TssSecretDependency',
        'Start-TssSecretDependency',
        'Get-TssSecretHook',
        'Get-TssSecretHookStub',
        'New-TssSecretHook',
        'Remove-TssSecretHook',
        'Search-TssSecretHook',
        'Update-TssSecretHook',
        'New-TssSecretPermission',
        'Remove-TssSecretPermission',
        'Search-TssSecretPermission',
        'Update-TssSecretPermission',
        'Search-TssSecretPolicy',
        'Add-TssSecretTemplateField',
        'Get-TssSecretTemplate',
        'Get-TssSecretTemplateFolder',
        'New-TssSecretTemplate',
        'New-TssSecretTemplateField',
        'Search-TssSecretTemplate',
        'Set-TssSecretTemplate',
        'Update-TssSecretTemplateField',
        'Add-TssSecretPermission',
        'Close-TssSecret',
        'Disable-TssSecretCheckout',
        'Disable-TssSecretEmail',
        'Enable-TssSecretCheckout',
        'Enable-TssSecretEmail',
        'Find-TssSecret',
        'Get-TssSecret',
        'Get-TssSecretAttachment',
        'Get-TssSecretAudit',
        'Get-TssSecretField',
        'Get-TssSecretHeartbeatStatus',
        'Get-TssSecretPasswordStatus',
        'Get-TssSecretSetting',
        'Get-TssSecretState',
        'Get-TssSecretStub',
        'Get-TssSecretSummary',
        'Invoke-TssSecretGeneratePassword',
        'New-TssSecret',
        'Open-TssSecret',
        'Remove-TssSecret',
        'Restore-TssSecret',
        'Revoke-TssSecret',
        'Search-TssSecret',
        'Set-TssSecret',
        'Set-TssSecretExpiration',
        'Set-TssSecretField',
        'Set-TssSecretRpcAssociated',
        'Set-TssSecretRpcPrivileged',
        'Set-TssSecretSecurity',
        'Start-TssSecretChangePassword',
        'Start-TssSecretHeartbeat',
        'Stop-TssSecretChangePassword',
        'Test-TssSecretAction',
        'Test-TssSecretState',
        'Update-TssSecret',
        'Update-TssSecretRdpLauncherSetting',
        'Get-TssSite',
        'Disable-TssUser',
        'Enable-TssUser',
        'Find-TssUser',
        'Get-TssUser',
        'Get-TssUserAudit',
        'Get-TssUserGroup',
        'Get-TssUserOwner',
        'Get-TssUserRole',
        'Get-TssUserRoleAssigned',
        'Lock-TssUser',
        'New-TssUser',
        'Remove-TssUserPii',
        'Reset-TssUserPassword',
        'Search-TssUser',
        'Show-TssCurrentUser',
        'Unlock-TssUser',
        'Update-TssUser',
        'Update-TssUserPassword',
        'Get-TssVersion',
        'Test-TssVersion',
        'Search-TssWorkflowTemplate',
        'Search-TssEventPipelinePolicy',
        'Search-TssSecretAccessRequest',
        'Get-TssEventPipelinePolicy',
        'Search-TssEventPipeline',
        'Enable-TssEventPipeline',
        'Disable-TssEventPipeline',
        'Get-TssEventPipeline'
    )
    Description          = 'PowerShell Tools for Thycotic Secret Server'
    Guid                 = 'e6b56c5f-41ac-4ba4-8b88-2c063f683176'
    Author               = 'Shawn Melton'
    CompanyName          = 'Thycotic'
    Copyright            = '(c) Thycotic Professional Services. All rights reserved.'
    PowerShellVersion    = '5.1'
    PrivateData          = @{
        PSData = @{
            Tags         = 'SecretServer', 'Thycotic', 'DevOps', 'Security'
            IconUri      = 'https://thyproservices.z20.web.core.windows.net/thycotic.secretserver_logo.png'
            ProjectURI   = 'https://github.com/thycotic-ps/thycotic.secretserver'
            LicenseURI   = 'https://github.com/thycotic-ps/thycotic.secretserver/blob/main/LICENSE'
            ReleaseNotes = 'https://github.com/thycotic-ps/thycotic.secretserver/blob/main/CHANGELOG.md'
        }
    }
}