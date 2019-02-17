#read a line delimited file that contains the IP of FQDN of the DNS servers that need to have DNSServerDiagnostic options enabled
#Assumes the use of a domain administrator account

#Line delimited file with DNS server IP or FQDN
$dnsservers = get-content .\Desktop\dnssrvs.txt
 
#For loop to cycle through dnssrvs.txt file that enables all DnsServerDiagnostic options by setting to True
foreach ($dnsserver in $dnsservers)
{
     Set-DnsServerDiagnostics -ComputerName $dnsserver -All $True
}
