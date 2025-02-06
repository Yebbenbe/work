# Connecting
Connect-ExchangeOnline -UserPrincipalName youradmin@domain.com

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
