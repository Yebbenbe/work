# PS is: Dynamically typed

# Connecting
Connect-ExchangeOnline -UserPrincipalName youradmin@domain.com

# Print a variable (like an array of objects)
$mysteryVariable.GetType

# Creating data types
$singleValue = "Hello, World!"  # string
$array = @("Item1", "Item2", "Item3") # Array of strings
$object = [PSCustomObject]@{Name="John"; Age=30}  # This is a custom object
$arrayOfObjects = @(   
    [PSCustomObject]@{Name="John"; Age=30},
    [PSCustomObject]@{Name="Jane"; Age=25}
)  

# Getting data type
$mystery
# Print an array of objects formatted as a list
$variable | Format-List

# Get attributes from an arrray of objects
$someArray | Get-Member

# Get users 
$users = Get-Mailbox -ResultSize Unlimited

# Filter our users with certain domains
$excludedDomains = @("some@domain.com, some@otherdomain.ca")
$filteredUsers = $users | Where-Object {
    $userDomain = $_.UserPrincipalName.Split('@')[1]
    -not ($excludedDomains -contains $userDomain)
}

# Printing the addresses of above
$filteredUsers.UserPrincipalName

# Get a mailbox config
Get-MailboxRegionalConfiguration -Identity "some@domain.ca"

# See it as a list
Get-MailboxRegionalConfiguration -Identity "some@domain.ca" | Format-List

# Get a list of mailbox properties 
Get-MailboxRegionalConfiguration -Identity "some@domain.ca" | Get-Member

# Set a mailbox config
Set-MailboxRegionalConfiguration -Identity "some@domain.ca" -TimeZone "Atlantic Standard Time"
