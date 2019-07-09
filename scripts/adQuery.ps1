#Query AD and return the objects and relevant information in compressed JSON format


import-module ActiveDirectory; Get-ADComputer -Filter * -Property * | Select-Object Name,DistinguishedName,DNSHostName,OperatingSystem,OperatingSystemServicePack,OperatingSystemVersion,IPv4Address|ConvertTo-Json -compress
