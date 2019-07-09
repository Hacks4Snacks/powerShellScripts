#Dump configuration settings for local event logs into an autoformatted table
Get-EventLog -list | Format-Table LogDisplayName,MaximumKilobytes,OverflowAction,MinimumRetentionDays -AutoSize