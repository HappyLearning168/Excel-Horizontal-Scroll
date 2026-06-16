#Requires AutoHotkey v2.0
#SingleInstance Force

A_HotkeyInterval := 2000
A_MaxHotkeysPerInterval := 1000

#HotIf WinActive("ahk_exe EXCEL.EXE")

+WheelUp::SendEvent("{WheelLeft}")
+WheelDown::SendEvent("{WheelRight}")

#HotIf