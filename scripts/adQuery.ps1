#Query AD and return the objects and relevant information in compressed JSON format


import-module ActiveDirectory; Get-ADComputer -Filter * -Property * | select Name,DistinguishedName,DNSHostName,OperatingSystem,OperatingSystemServicePack,OperatingSystemVersion,IPv4Address|ConvertTo-Json -compress
