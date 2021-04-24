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


 $currentuser = whoami


Write-Host "                                                                                                                                                            "  -ForegroundColor Green 
Write-Host "                                                                                                                                                            "  -ForegroundColor Green 
Write-Host "                                                                                                                                                            "  -ForegroundColor Green 
Write-Host "                                                                                                                                                            "  -ForegroundColor Green 
Write-Host "                                                                                                                                                            "  -ForegroundColor Green 
Write-Host "                                                                                                                                                            "  -ForegroundColor Green 
Write-Host "     __  _______          __________                                                                                                                        "  -ForegroundColor White   
Write-Host "    /  |/  / __ \        /  _/_  __/____  _________    _________  ____ ___                                                                                  "  -ForegroundColor White  
Write-Host "   / /|_/ / /_/ /______  / /  / /  / __ \/ ___/ __ \  / ___/ __ \/ __ `__ \                                                                                 "  -ForegroundColor White 
Write-Host "  / /  / / _, _//_____/_/ /  / /  / /_/ / /  / /_/ /_/ /__/ /_/ / / / / / /                                                                                 "  -ForegroundColor White 
Write-Host " /_/  /_/_/ |_|       /___/ /_/  / .___/_/   \____/(_)___/\____/_/ /_/ /_/                                                                                  "  -ForegroundColor White 
Write-Host "                                /_/                                                                                                                         "  -ForegroundColor White  
Write-Host "                                                                                                                                                            "  -ForegroundColor Green                                       
Write-Host "                                                                                                                                                            "  -ForegroundColor Green 
Write-Host "                                                                                                                                                            "  -ForegroundColor Green 
Write-Host "                                                                                                                                                            "  -ForegroundColor Green 
$host.UI.RawUI.WindowTitle = "Menu for Scripts "
Write-Host "                                                           " -ForegroundColor white -BackgroundColor Red   
Write-Host "                                                           " -ForegroundColor green -BackgroundColor White   
Write-Host "                                                           " -ForegroundColor White -BackgroundColor Blue   
Write-Host "                                                                                "  

Write-Host "###########################################################"
Write-Host "  Please press Enter with NO selection To exit tool." -ForegroundColor Red
Write-Host "  "
Write-Host "###########################################################" 
Write-Host "  Please Enter a number for the script you want to run." -ForegroundColor green 
Write-Host "  "
Write-Host "###########################################################" 
Write-Host "  "
Write-Host "  "
$host.UI.RawUI.WindowTitle = "Self Managing Scripts - ToolBox (Server) "
#powershell -noexit -command "[console]::WindowWidth=100; [console]::WindowHeight=70; [console]::BufferWidth=[console]::WindowWidth"

if ((Test-Path    "C:\scripts\TonyB\toolsbox\testmenulist\") -eq $true ){
   
   Write-Host  "The Proper directory structure is present." -ForegroundColor Green 
   Write-Host "                                                           " 
  }
  else{
    
      New-Item -Path "C:\scripts\TonyB\toolsbox\testmenulist\" -ItemType Directory -ErrorAction Stop | Out-Null 
      Write-Host "The proper directory structure has been created for your Toolbox scripts." -ForegroundColor Yellow 
      Write-Host "Now you can add your scripts to the folder C:\scriptzs\TonyB\toolsbox\testmenulist\"  -ForegroundColor Yellow -NoNewline
      Write-Host "'<YOUR SCRIPTS GO HERE>'" -ForegroundColor Magenta 
      Write-Host "                                                           " 
  }
 


$scriptlists =  ls -Path C:\scripts\TonyB\toolsbox\testmenulist
$menu = @{}
for ($i=1;$i -le $scriptlists.count; $i++) {
    $textcolor = "$i. $($scriptlists[$i-1].name)"
    
    #Write-Host "$i. $($scriptlists[$i-1].name)"
    Write-Host ""
    $menu.Add($i,($scriptlists[$i-1].name))
    

            if ( $textcolor  -like "*DNSflush.ps1") {
     
            write-host $textcolor -ForegroundColor yellow
    }
    
    else {
    $textcolor
    
    }

    }
  

[int]$ans = Read-Host 'Enter selection'
$selection = $menu.Item($ans)
Write-Host ""
if ($selection -eq $null){
            exit
                      }



Get-ChildItem -Path C:\scripts\TonyB\toolsbox\testmenulist  -name $selection | Start-Process PowerShell.exe -argument "-noexit -nologo -noprofile -command C:\scripts\TonyB\toolsbox\testmenulist\$selection"
cls
powershell.exe C:\scripts\TonyB\toolsbox\met1.ps1 


#start-process powershell.exe -argument "-noexit -nologo -noprofile -command  c:\temp  $selection"
