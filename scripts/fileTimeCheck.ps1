# Review the content of the current Windows directory and search for files with non-standard date-time

Get-ChildItem -recurse | Where-Object {!$_.PsIsContainer} | Sort-Object -Descending {$_.CreationTime}
