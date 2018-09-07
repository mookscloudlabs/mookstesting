# Testing
Import-Module TaskScheduler $task = New-Task
$task.Settings.Hidden = $true
Add-TaskAction -Task $task -Path C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe –Arguments “-File C:\Scripts\GroupMembershipChanges.ps1”
Add-TaskTrigger -Task $task -Daily -At “10:00”
Register-ScheduledJob –Name ”Monitor Group Management” -Task $task