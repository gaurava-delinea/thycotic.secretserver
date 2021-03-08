class TssSecretSummary {
    [boolean]
    $Active

    [boolean]
    $AutoChangeEnabled

    [boolean]
    $CheckedOut

    [boolean]
    $CheckOutEnabled

    [datetime]
    $CreateDate

    [int]
    $DaysUntilExpiration

    [boolean]
    $DoubleLockEnabled

    [TssSecretSummaryExtendedField[]]
    $ExtendedFields

    [int]
    $FolderId

    [boolean]
    $HidePassword

    [int]
    $Id

    [boolean]
    $InheritsPermissions

    [boolean]
    $IsOutOfSync

    [boolean]
    $IsRestricted

    [datetime]
    $LastAccessed

    [ValidateSet('Failed','Success','Pending','Disabled','UnableToConnect','UnknownError','IncompatibleHost','AccountLockedOut','DnsMismatch','UnableToValidateServerPublicKey','Processing','ArgumentError','AccessDenied')]
    [string]
    $LastHeartbeatStatus

    [datetime]
    $LastPasswordChangeAttempt

    [string]
    $Name

    [string]
    $OutOfSyncReason

    [boolean]
    $RequiresApproval

    [boolean]
    $RequiresComment

    [int]
    $SecretTemplateId

    [string]
    $SecretTemplateName

    [int]
    $SiteId
}