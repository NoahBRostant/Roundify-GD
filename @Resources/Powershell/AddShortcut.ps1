$DesktopPath = [Environment]::GetFolderPath("Desktop")
$Startpath = $env:APPDATA

function Check {
    If (Test-Path -Path "$Startpath\Microsoft\Windows\Start Menu\Programs\Roundify Settings.lnk") {
        $RmAPI.Bang('[!SetOption MeterOtherSetting1Option1 MeterStyle "BottomBox:S | TrueStyleProg"]')
        $RmAPI.Bang('[!UpdateMeter MeterOtherSetting1Option1]')
        $RmAPI.Bang('[!Redraw]')
        $RmAPI.Log("Found: Roundify Settings in programs")
    } else {
        $RmAPI.Bang('[!SetVariable ShortcutStart "0"]')
        $RmAPI.Log("Failed to find Roundify Settings in programs")
    }
    If (Test-Path -Path "$DesktopPath\Roundify Settings.lnk") {
        $RmAPI.Bang('[!SetVariable ShortcutDesktop "1"]')
        $RmAPI.Log("Found: Roundify Settings on desktop")
    } else {
        $RmAPI.Bang('[!SetVariable ShortcutDesktop "0"]')
        $RmAPI.Log("Failed to find Roundify Settings on desktop")
    }

}

function Desktop {
    $RainmeterExe = $RmAPI.VariableStr('PROGRAMPATH')
    $ResourceFolder = $RmAPI.VariableStr('@')
    $WScriptShell = New-Object -ComObject WScript.Shell
    $Shortcut = $WScriptShell.CreateShortcut("$DesktopPath\Roundify Settings.lnk")
    $Shortcut.TargetPath = $RainmeterExe+"Rainmeter.exe"
    $Shortcut.Arguments = '!ActivateConfig Roundify\Settings Settings.ini'
    $shortcut.IconLocation = $ResourceFolder+"Images\Logo.ico"
    $Shortcut.Save()
}

function StartFolder {
    $RainmeterExe = $RmAPI.VariableStr('PROGRAMPATH')
    $ResourceFolder = $RmAPI.VariableStr('@')
    $WScriptShell = New-Object -ComObject WScript.Shell
    $Shortcut = $WScriptShell.CreateShortcut("$Startpath\Microsoft\Windows\Start Menu\Programs\Roundify Settings.lnk")
    $Shortcut.TargetPath = $RainmeterExe+"Rainmeter.exe"
    $Shortcut.Arguments = '!ActivateConfig Roundify\Settings Settings.ini'
    $shortcut.IconLocation = $ResourceFolder+"Images\Logo.ico"
    $Shortcut.Save()
}

function RemoveDesktop {
    Remove-Item "$DesktopPath\Roundify Settings.lnk" -Recurse
}

function RemoveStartFolder {
    Remove-Item "$Startpath\Microsoft\Windows\Start Menu\Programs\Roundify Settings.lnk" -Recurse
}