<#
.SYNOPSIS
This script will retrieve all computers in an OU

.DESCRIPTION
This script will retrieve all computers in an OU.  The ActiveDirectory module is required.

.EXAMPLE
./Get-CompsInOu -OU OU=Laboratory,OU=Computers,DC=example,DC=com

.NOTES
This is version 1.0
#>
Function Get-CompsInOU{
    [CmdletBinding()]
    Param(      
        [Parameter(Mandatory=$true)]
        [String]$OU
    )

    #Retrieve all computers in the OU
    Get-ADComputer -SearchBase $OU -Filter '*' | Select -Exp Name | Sort-Object
}
