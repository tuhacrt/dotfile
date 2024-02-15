'put it in startup folder to run the metioned ahk script on startup (shell:common startup)
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run """C:\Users\user\Documents\AutoHotkey\default.ahk""", 0 'must quote command if it has spaces; must escape quotes
Set WshShell = Nothing
