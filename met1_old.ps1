 <#
.SYNOPSIS
Creates a menu for scripts that you already have in a certain location. This will help you to centralize your scripts. You can aslo run your scripts from the menu, which will lauch a new powershell instance. 
.EXAMPLE

navagate to here and run script.
C:\temp\toolsbox\met1.ps1

.EXAMPLE 
Below is a screen example.

1. enableres.ps1
     
2. testgood.ps1

   Enter selection: 2

.EXAMPLE
 met1.ps1
.PARAMETER computername
one or more computername, or IP address... peace to America!
Think powershell think Mr-ITpro.com !!! FUN STUFF
.LINK
        http://www.mr-itpro.com
 #>




Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black
Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black 
Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black
Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black 
Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black
Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black 
Write-Host "     __  _______          __________                                                                                                                        "  -ForegroundColor Green -BackgroundColor black
Write-Host "    /  |/  / __ \        /  _/_  __/____  _________    _________  ____ ___                                                                                  "  -ForegroundColor Green -BackgroundColor black
Write-Host "   / /|_/ / /_/ /______  / /  / /  / __ \/ ___/ __ \  / ___/ __ \/ __ `__ \                                                                                 "  -ForegroundColor Green -BackgroundColor black
Write-Host "  / /  / / _, _//_____/_/ /  / /  / /_/ / /  / /_/ /_/ /__/ /_/ / / / / / /                                                                                 "  -ForegroundColor Green -BackgroundColor black
Write-Host " /_/  /_/_/ |_|       /___/ /_/  / .___/_/   \____/(_)___/\____/_/ /_/ /_/                                                                                  "  -ForegroundColor Green -BackgroundColor black
Write-Host "                                /_/                                                                                                                         "  -ForegroundColor Green -BackgroundColor black
Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black                                       
Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black
Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black
Write-Host "                                                                                                                                                            "  -ForegroundColor Green -BackgroundColor black


 $host.UI.RawUI.WindowTitle = "Menu for Script "
 

$processes =  ls -Path C:\Temp\toolsbox\testmenulist
$menu = @{}
for ($i=1;$i -le $processes.count; $i++) {
    Write-Host "$i. $($processes[$i-1].name)"
    Write-Host ""
    $menu.Add($i,($processes[$i-1].name))
    }

[int]$ans = Read-Host 'Enter selection'
$selection = $menu.Item($ans)
Write-Host ""
if ($selection -eq $null){
            exit
                      }

Get-ChildItem -Path C:\Temp\toolsbox\testmenulist  -name $selection | Start-Process PowerShell.exe -argument "-noexit -nologo -noprofile -command c:\Temp\toolsbox\testmenulist\$selection"

powershell.exe C:\Temp\toolsbox\met1.ps1 


#start-process powershell.exe -argument "-noexit -nologo -noprofile -command  c:\temp  $selection"