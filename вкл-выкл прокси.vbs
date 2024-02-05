Option Explicit
Dim valUserIn
Dim objShell, RegLocate, RegLocate1
Set objShell = WScript.CreateObject("WScript.Shell")

On Error Resume Next
valUserIn = MsgBox("Включить прокси?",4,"Да - Вкл / Нет - Выкл")

If valUserIn=vbYes Then
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer"
objShell.RegWrite RegLocate,"http=10.0.50.52:3128;https=10.0.50.52:3128","REG_SZ"
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
objShell.RegWrite RegLocate,"1","REG_DWORD"
MsgBox "Прокси активировано!"

else

RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
objShell.RegWrite RegLocate,"0","REG_DWORD"
MsgBox "Прокси отключено!"

End If
WScript.Quit