# Connecting
Connect-ExchangeOnline -UserPrincipalName youradmin@domain.com

# Connecting but wayyy worse
$UserCredential = Get-Credential
Connect-ExchangeOnline -UserPrincipalName $UserCredential.UserName -ShowProgress $true

# Get users 
$users = Get-Mailbox -ResultSize Unlimited

# Filter our users with certain domains
$excludedDomains = @("some@domain.com, some@otherdomain.ca")
$filteredUsers = $users | Where-Object {
    $userDomain = $_.UserPrincipalName.Split('@')[1]
    -not ($excludedDomains -contains $userDomain)
}

# Print
$filteredUsers.UserPrincipalName

# Get a mailbox config
Get-MailboxRegionalConfiguration -Identity "some@domain.ca"

# See it as a list
Get-MailboxRegionalConfiguration -Identity "some@domain.ca" | Format-List

# Get a list of mailbox properties 
Get-MailboxRegionalConfiguration -Identity "some@domain.ca" | Get-Member

# Set a mailbox config
Set-MailboxRegionalConfiguration -Identity "some@domain.ca" -TimeZone "Atlantic Standard Time"
