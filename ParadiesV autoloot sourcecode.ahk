#NoEnv
#SingleInstance, force
SetTitleMatchMode, 2
DetectHiddenWindows, On

Gui, Add, Text, x2 y-1 w380 h30 , Numpad 1 im ALT:V Fenster, danach kannst du auf den Desk :).
Gui, Add, Text, x2 y19 w380 h30 , Numpad 1 = Starten
Gui, Add, Text, x2 y49 w420 h20 , Numpad 2 = Stop
Gui, Add, Picture, x162 y69 w220 h190 , pv.png
Gui, Add, Text, x2 y229 w160 h30 , Twitch: alexstone_v2
Gui, Show, w384 h260, ParadiesV Autoloot by Alex
return

GuiClose:
ExitApp



Numpad1::
WinGet, WinID, ID, alt:V Multiplayer
WinActivate, ahk_id %WinID%
SetTimer, LOOT, 200
return

Numpad2::
SetTimer, LOOT, Off
return

LOOT:
ControlSend,ahk_parent, e,ahk_id %WinID%
return