# Search-TssMetadata

## SYNOPSIS
Search metadata

## SYNTAX

### item
```
Search-TssMetadata [-TssSession] <TssSession> -ItemId <Int32> -Type <String> [-SortBy <String>]
 [<CommonParameters>]
```

### field
```
Search-TssMetadata [-TssSession] <TssSession> [-FieldId <Int32>] [-SortBy <String>] [<CommonParameters>]
```

## DESCRIPTION
Search metadata

When searching based on Item ID the account used must have the proper permissions on that object before metadata data can be returned

## EXAMPLES

### EXAMPLE 1
```
$session = New-TssSession -SecretServer https://alpha -Credential $ssCred
Search-TssMetadata -TssSession $session -ItemId 46 -MetadataFieldId 4
```

Return Field ID 4 on object Item ID 46

## PARAMETERS

### -TssSession
TssSession object created by New-TssSession for auth

```yaml
Type: TssSession
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ItemId
Item ID to return metadata (Secret, Group, User, etc.)

```yaml
Type: Int32
Parameter Sets: item
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -FieldId
Metadata Field ID

```yaml
Type: Int32
Parameter Sets: field
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
Metadata Type (Secret, User, Folder, Group)

```yaml
Type: String
Parameter Sets: item
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SortBy
Sort by specific property, default ItemId

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: ItemId
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### TssMetadataSummary
## NOTES
Requires TssSession object returned by New-TssSession

## RELATED LINKS

[https://thycotic-ps.github.io/thycotic.secretserver/commands/Search-TssMetadata](https://thycotic-ps.github.io/thycotic.secretserver/commands/Search-TssMetadata)

[https://github.com/thycotic-ps/thycotic.secretserver/blob/main/src/functions/metadata/Search-Metadata.ps1](https://github.com/thycotic-ps/thycotic.secretserver/blob/main/src/functions/metadata/Search-Metadata.ps1)
