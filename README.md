# random work stuff  

For containing work-related dashboards for Microsoft's environments or whatever

# SecureScorePowershell.ps1 (WIP)
Uses ExchangeManagementOnline module to make changes for Secure Score Compliance
Currently:
- Enables MailTips
- Disables Addiitonal Storage providers in OWA
- Creates a standard SafeLinks policy and assigns all domains to it
- Creates a standard Safe Attachments policy and assigns all domains to it
- working on MalwareFilterPolicy

  #ScreenshotArchiver.ps1
  Moves all files in C:\Users\$user\Pictures\screenshots into a subfolder with yesterday's date.
  Designed to be run everyday via Task Scheduler
