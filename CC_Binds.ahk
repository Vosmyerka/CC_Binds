#SingleInstance Force

if !A_IsAdmin
    Run, % "*RunAs " (A_IsCompiled ? "" : A_AhkPath " ") Chr(34) A_ScriptFullPath Chr(34)

; ----------------------------------------------main window----------------------------------------------

Gui, Show, Restore w800 h600, CC_Binds	; Creating main window

Gui, Font, S15, Arial
Gui, Add, Button, x310 y460 w170 h30 gGetText, Start script

Gui, Add, Button, x250 y520 w300 h30 gInstr, Instructions
Gui, Add, Button, x250 y560 w300 h30 gSettin, Settings


Gui, Font, S12, Arial
Gui, Add, Edit, x25 y20 w750 h30 vText1, TEXT #1
Gui, Add, Edit, x25 y60 w750 h30 vText2, TEXT #2
Gui, Add, Edit, x25 y100 w750 h30 vText3, TEXT #3
Gui, Add, Edit, x25 y140 w750 h30 vText4, TEXT #4
Gui, Add, Edit, x25 y180 w750 h30 vText5, TEXT #5
Gui, Add, Edit, x25 y220 w750 h30 vText6, TEXT #6
Gui, Add, Edit, x25 y260 w750 h30 vText7, TEXT #7
Gui, Add, Edit, x25 y300 w750 h30 vText8, TEXT #8
Gui, Add, Edit, x25 y340 w750 h30 vText9, TEXT #9

; -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-INFORMATION-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

Gui, Font, S10, Arial
Gui, Add, Text, x10 y560 w100 h40, Made by Vosmyerka
Gui, Add, Text, x730 y560 w50 h30, Version: 2.1

gosub Settin
Gui, Settings: Destroy

return
;-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_--_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

; ----------------------------------------------instructions window----------------------------------------------

Instr:
Gui, Instructions: Show, Restore w800 h400, Instructions 	; Creating a window for Intstructions
Gui, Instructions: Font, S12, Arial

Gui, Instructions: Add, Text, x10, 1. Enter the text in the input fields
Gui, Instructions: Add, Text, x10, 2. Specify the hotkeys which will send messages in chat
Gui, Instructions: Add, Text, x10, 3. Press the button {Start Script}
Gui, Instructions: Add, Text, x10, 4. To send 1 message use the hotkey you specified on left side of the settings menu
Gui, Instructions: Add, Text, x10, 5.1. To send ∞ messages with timer of 10 seconds, press the hotkey from right side of the settings ONLY ONCE
Gui, Instructions: Add, Text, x10, 5.2. In order to stop sending messages just press that button again
Gui, Instructions: Add, Text, x10, 6. Warning! Emergency exit from the program is performed by pressing the F2 key

Gui, Instructions: Add, Button, x730 y350 gBackFromInstr, BACK

return

; ----------------------------------------------Keys Dictionary----------------------------------------------

Numpad1::vk61
Numpad2::vk62
Numpad3::vk63
Numpad4::vk64
Numpad5::vk65
Numpad6::vk66
Numpad7::vk67
Numpad8::vk68
Numpad9::vk69
Numpad0::vk60

NumpadDiv::vk6F
NumpadMult::vk6A
NumpadAdd::vk6B
NumpadSub::vk6D

q::vk51
w::vk57
e::vk45
r::vk52
t::vk54
u::vk55
i::vk49
o::vk4F
p::vk50

a::vk41
s::vk53
d::vk44
f::vk46
g::vk47
h::vk48
j::vk4A
k::vk4B
l::vk4C

z::vk5A
x::vk58
c::vk43
v::vk56
b::vk42
n::vk4E
m::vk4D

; ----------------------------------------------settings window----------------------------------------------

Settin:
Gui, Settings: Show, Restore w800 h500, Settings	; Creating a window for Settings

Gui, Settings: Font, S12, Arial


IniRead, Key1, %A_MyDocuments%\ccbinds.ini, Section, Key1, % A_Space
IniRead, Key2, %A_MyDocuments%\ccbinds.ini, Section, Key2, % A_Space
IniRead, Key3, %A_MyDocuments%\ccbinds.ini, Section, Key3, % A_Space
IniRead, Key4, %A_MyDocuments%\ccbinds.ini, Section, Key4, % A_Space
IniRead, Key5, %A_MyDocuments%\ccbinds.ini, Section, Key5, % A_Space
IniRead, Key6, %A_MyDocuments%\ccbinds.ini, Section, Key6, % A_Space
IniRead, Key7, %A_MyDocuments%\ccbinds.ini, Section, Key7, % A_Space
IniRead, Key8, %A_MyDocuments%\ccbinds.ini, Section, Key8, % A_Space
IniRead, Key9, %A_MyDocuments%\ccbinds.ini, Section, Key9, % A_Space

Gui, Settings: Add, Hotkey, x20 y20 h30 vKey1, % Key1
Gui, Settings: Add, Hotkey, x20 y60 h30 vKey2, % Key2
Gui, Settings: Add, Hotkey, x20 y100 h30 vKey3, % Key3
Gui, Settings: Add, Hotkey, x20 y140 h30 vKey4, % Key4
Gui, Settings: Add, Hotkey, x20 y180 h30 vKey5, % Key5
Gui, Settings: Add, Hotkey, x20 y220 h30 vKey6, % Key6
Gui, Settings: Add, Hotkey, x20 y260 h30 vKey7, % Key7
Gui, Settings: Add, Hotkey, x20 y300 h30 vKey8, % Key8
Gui, Settings: Add, Hotkey, x20 y340 h30 vKey9, % Key9

Gui, Settings: Add, Button, x220 y20 h30 w150 vPressButton1 gButton1, TEXT #1
Gui, Settings: Add, Button, x220 y60 h30 w150 vPressButton2 gButton2, TEXT #2
Gui, Settings: Add, Button, x220 y100 h30 w150 vPressButton3 gButton3, TEXT #3
Gui, Settings: Add, Button, x220 y140 h30 w150 vPressButton4 gButton4, TEXT #4
Gui, Settings: Add, Button, x220 y180 h30 w150 vPressButton5 gButton5, TEXT #5
Gui, Settings: Add, Button, x220 y220 h30 w150 vPressButton6 gButton6, TEXT #6
Gui, Settings: Add, Button, x220 y260 h30 w150 vPressButton7 gButton7, TEXT #7
Gui, Settings: Add, Button, x220 y300 h30 w150 vPressButton8 gButton8, TEXT #8
Gui, Settings: Add, Button, x220 y340 h30 w150 vPressButton9 gButton9, TEXT #9



IniRead, Key1Plus, %A_MyDocuments%\ccbinds.ini, Section, Key1Plus, % A_Space
IniRead, Key2Plus, %A_MyDocuments%\ccbinds.ini, Section, Key2Plus, % A_Space
IniRead, Key3Plus, %A_MyDocuments%\ccbinds.ini, Section, Key3Plus, % A_Space
IniRead, Key4Plus, %A_MyDocuments%\ccbinds.ini, Section, Key4Plus, % A_Space
IniRead, Key5Plus, %A_MyDocuments%\ccbinds.ini, Section, Key5Plus, % A_Space
IniRead, Key6Plus, %A_MyDocuments%\ccbinds.ini, Section, Key6Plus, % A_Space
IniRead, Key7Plus, %A_MyDocuments%\ccbinds.ini, Section, Key7Plus, % A_Space
IniRead, Key8Plus, %A_MyDocuments%\ccbinds.ini, Section, Key8Plus, % A_Space
IniRead, Key9Plus, %A_MyDocuments%\ccbinds.ini, Section, Key9Plus, % A_Space

Gui, Settings: Add, Hotkey, x440 y20 h30 vKey1Plus, % Key1Plus
Gui, Settings: Add, Hotkey, x440 y60 h30 vKey2Plus, % Key2Plus
Gui, Settings: Add, Hotkey, x440 y100 h30 vKey3Plus, % Key3Plus
Gui, Settings: Add, Hotkey, x440 y140 h30 vKey4Plus, % Key4Plus
Gui, Settings: Add, Hotkey, x440 y180 h30 vKey5Plus, % Key5Plus
Gui, Settings: Add, Hotkey, x440 y220 h30 vKey6Plus, % Key6Plus
Gui, Settings: Add, Hotkey, x440 y260 h30 vKey7Plus, % Key7Plus
Gui, Settings: Add, Hotkey, x440 y300 h30 vKey8Plus, % Key8Plus
Gui, Settings: Add, Hotkey, x440 y340 h30 vKey9Plus, % Key9Plus

Gui, Settings: Add, Button, x640 y20 h30 w150 vPressButton1Plus gButton1Plus, TEXT #1
Gui, Settings: Add, Button, x640 y60 h30 w150 vPressButton2Plus gButton2Plus, TEXT #2
Gui, Settings: Add, Button, x640 y100 h30 w150 vPressButton3Plus gButton3Plus, TEXT #3
Gui, Settings: Add, Button, x640 y140 h30 w150 vPressButton4Plus gButton4Plus, TEXT #4
Gui, Settings: Add, Button, x640 y180 h30 w150 vPressButton5Plus gButton5Plus, TEXT #5
Gui, Settings: Add, Button, x640 y220 h30 w150 vPressButton6Plus gButton6Plus, TEXT #6
Gui, Settings: Add, Button, x640 y260 h30 w150 vPressButton7Plus gButton7Plus, TEXT #7
Gui, Settings: Add, Button, x640 y300 h30 w150 vPressButton8Plus gButton8Plus, TEXT #8
Gui, Settings: Add, Button, x640 y340 h30 w150 vPressButton9Plus gButton9Plus, TEXT #9

Gui, Settings: Add, Button, x730 y450 gBackFromInstr, BACK

; ----------------------------------------------main program----------------------------------------------

return

GetText:
	GuiControlGet, Text1
	GuiControlGet, Text2
	GuiControlGet, Text3
	GuiControlGet, Text4
	GuiControlGet, Text5
	GuiControlGet, Text6
	GuiControlGet, Text7
	GuiControlGet, Text8
	GuiControlGet, Text9
	gosub Button1
	gosub Button2
	gosub Button3
	gosub Button4
	gosub Button5
	gosub Button6
	gosub Button7
	gosub Button8
	gosub Button9
	gosub Button1Plus
	gosub Button2Plus
	gosub Button3Plus
	gosub Button4Plus
	gosub Button5Plus
	gosub Button6Plus
	gosub Button7Plus
	gosub Button8Plus
	gosub Button9Plus
	Gui, minimize
	return

Button1:
	Gui, Submit, NoHide
	Hotkey, % PrKey1, off, UseErrorLevel
	Hotkey, % PrKey1 := Key1, Key1, on, UseErrorLevel
	IniWrite, % Key1, %A_MyDocuments%\ccbinds.ini, Section, Key1
	return

Button1Plus:
	Gui, Submit, NoHide
	Hotkey, % PrKey1Plus, off, UseErrorLevel
	Hotkey, % PrKey1Plus := Key1Plus, Key1Plus, on, UseErrorLevel
	IniWrite, % Key1Plus, %A_MyDocuments%\ccbinds.ini, Section, Key1Plus
	return

Button2:
	Gui, Submit, NoHide
	Hotkey, % PrKey2, off, UseErrorLevel
	Hotkey, % PrKey2 := Key2, Key2, on, UseErrorLevel
	IniWrite, % Key2, %A_MyDocuments%\ccbinds.ini, Section, Key2
	return

Button2Plus:
	Gui, Submit, NoHide
	Hotkey, % PrKey2Plus, off, UseErrorLevel
	Hotkey, % PrKey2Plus := Key2Plus, Key2Plus, on, UseErrorLevel
	IniWrite, % Key2Plus, %A_MyDocuments%\ccbinds.ini, Section, Key2Plus
	return

Button3:
	Gui, Submit, NoHide
	Hotkey, % PrKey3, off, UseErrorLevel
	Hotkey, % PrKey3 := Key3, Key3, on, UseErrorLevel
	IniWrite, % Key3, %A_MyDocuments%\ccbinds.ini, Section, Key3
	return

Button3Plus:
	Gui, Submit, NoHide
	Hotkey, % PrKey3Plus, off, UseErrorLevel
	Hotkey, % PrKey3Plus := Key3Plus, Key3Plus, on, UseErrorLevel
	IniWrite, % Key3Plus, %A_MyDocuments%\ccbinds.ini, Section, Key3Plus
	return

Button4:
	Gui, Submit, NoHide
	Hotkey, % PrKey4, off, UseErrorLevel
	Hotkey, % PrKey4 := Key4, Key4, on, UseErrorLevel
	IniWrite, % Key4, %A_MyDocuments%\ccbinds.ini, Section, Key4
	return

Button4Plus:
	Gui, Submit, NoHide
	Hotkey, % PrKey4Plus, off, UseErrorLevel
	Hotkey, % PrKey4Plus := Key4Plus, Key4Plus, on, UseErrorLevel
	IniWrite, % Key4Plus, %A_MyDocuments%\ccbinds.ini, Section, Key4Plus
	return

Button5:
	Gui, Submit, NoHide
	Hotkey, % PrKey5, off, UseErrorLevel
	Hotkey, % PrKey5 := Key5, Key5, on, UseErrorLevel
	IniWrite, % Key5, %A_MyDocuments%\ccbinds.ini, Section, Key5
	return

Button5Plus:
	Gui, Submit, NoHide
	Hotkey, % PrKey5Plus, off, UseErrorLevel
	Hotkey, % PrKey5Plus := Key5Plus, Key5Plus, on, UseErrorLevel
	IniWrite, % Key5Plus, %A_MyDocuments%\ccbinds.ini, Section, Key5Plus
	return

Button6:
	Gui, Submit, NoHide
	Hotkey, % PrKey6, off, UseErrorLevel
	Hotkey, % PrKey6 := Key6, Key6, on, UseErrorLevel
	IniWrite, % Key6, %A_MyDocuments%\ccbinds.ini, Section, Key6
	return

Button6Plus:
	Gui, Submit, NoHide
	Hotkey, % PrKey6Plus, off, UseErrorLevel
	Hotkey, % PrKey6Plus := Key6Plus, Key6Plus, on, UseErrorLevel
	IniWrite, % Key6Plus, %A_MyDocuments%\ccbinds.ini, Section, Key6Plus
	return

Button7:
	Gui, Submit, NoHide
	Hotkey, % PrKey7, off, UseErrorLevel
	Hotkey, % PrKey7 := Key7, Key7, on, UseErrorLevel
	IniWrite, % Key7, %A_MyDocuments%\ccbinds.ini, Section, Key7
	return

Button7Plus:
	Gui, Submit, NoHide
	Hotkey, % PrKey7Plus, off, UseErrorLevel
	Hotkey, % PrKey7Plus := Key7Plus, Key7Plus, on, UseErrorLevel
	IniWrite, % Key7Plus, %A_MyDocuments%\ccbinds.ini, Section, Key7Plus
	return

Button8:
	Gui, Submit, NoHide
	Hotkey, % PrKey8, off, UseErrorLevel
	Hotkey, % PrKey8 := Key8, Key8, on, UseErrorLevel
	IniWrite, % Key8, %A_MyDocuments%\ccbinds.ini, Section, Key8
	return

Button8Plus:
	Gui, Submit, NoHide
	Hotkey, % PrKey8Plus, off, UseErrorLevel
	Hotkey, % PrKey8Plus := Key8Plus, Key8Plus, on, UseErrorLevel
	IniWrite, % Key8Plus, %A_MyDocuments%\ccbinds.ini, Section, Key8Plus
	return

Button9:
	Gui, Submit, NoHide
	Hotkey, % PrKey9, off, UseErrorLevel
	Hotkey, % PrKey9 := Key9, Key9, on, UseErrorLevel
	IniWrite, % Key9, %A_MyDocuments%\ccbinds.ini, Section, Key9
	return

Button9Plus:
	Gui, Submit, NoHide
	Hotkey, % PrKey9Plus, off, UseErrorLevel
	Hotkey, % PrKey9Plus := Key9Plus, Key9Plus, on, UseErrorLevel
	IniWrite, % Key9Plus, %A_MyDocuments%\ccbinds.ini, Section, Key9Plus
	return

;#IfWinActive, Euro Truck Simulator 2 Multiplayer

Key1:
	Loop 1
	{
		if not GetKeyState("Key1")
			Sleep, 100
			SendInput, {SC15}
			Sleep, 100
			SendInput, {Text}%Text1%
			Sleep, 100
			SendInput, {Enter}
			Sleep, 100
	}
	return

Key1Plus:
    If !IsRunning
    {
        IsRunning := true
        SendInput, {SC15}
        Sleep, 100
        SendInput, {Text}%Text1%
        Sleep, 100
        SendInput, {Enter}
        SetTimer, SendTextLoop, 12000
    }
    else
    {
        IsRunning := false
        SetTimer, SendTextLoop, Off
    }
    return

SendTextLoop:
    SendInput, {SC15}
    Sleep, 100
    SendInput, {Text}%Text1%
    Sleep, 100
    SendInput, {Enter}
    return

Key2:
	Loop 1
	{
		if not GetKeyState("Key2")
			Sleep, 100
			SendInput, {SC15}
			Sleep, 100
			SendInput, {Text}%Text2%
			Sleep, 100
			SendInput, {Enter}
	}
	return

Key2Plus:
    If !IsRunning
    {
        IsRunning := true
        SendInput, {SC15}
        Sleep, 100
        SendInput, {Text}%Text2%
        Sleep, 100
        SendInput, {Enter}
        SetTimer, SendTextLoop2, 12000
    }
    else
    {
        IsRunning := false
        SetTimer, SendTextLoop2, Off
    }
    return

SendTextLoop2:
    SendInput, {SC15}
    Sleep, 100
    SendInput, {Text}%Text2%
    Sleep, 100
    SendInput, {Enter}
    return

Key3:
	Loop 1
	{
		if not GetKeyState("Key3")
			Sleep, 100
			SendInput, {SC15}
			Sleep, 100
			SendInput, {Text}%Text3%
			Sleep, 100
			SendInput, {Enter}
	}
	return

Key3Plus:
    If !IsRunning
    {
        IsRunning := true
        SendInput, {SC15}
        Sleep, 100
        SendInput, {Text}%Text3%
        Sleep, 100
        SendInput, {Enter}
        SetTimer, SendTextLoop3, 12000
    }
    else
    {
        IsRunning := false
        SetTimer, SendTextLoop3, Off
    }
    return

SendTextLoop3:
    SendInput, {SC15}
    Sleep, 100
    SendInput, {Text}%Text3%
    Sleep, 100
    SendInput, {Enter}
    return

Key4:
	Loop 1
	{
		if not GetKeyState("Key4")
			Sleep, 100
			SendInput, {SC15}
			Sleep, 100
			SendInput, {Text}%Text4%
			Sleep, 100
			SendInput, {Enter}
	}
	return

Key4Plus:
    If !IsRunning
    {
        IsRunning := true
        SendInput, {SC15}
        Sleep, 100
        SendInput, {Text}%Text4%
        Sleep, 100
        SendInput, {Enter}
        SetTimer, SendTextLoop4, 12000
    }
    else
    {
        IsRunning := false
        SetTimer, SendTextLoop4, Off
    }
    return

SendTextLoop4:
    SendInput, {SC15}
    Sleep, 100
    SendInput, {Text}%Text4%
    Sleep, 100
    SendInput, {Enter}
    return

Key5:
	Loop 1
	{
		if not GetKeyState("Key5")
			Sleep, 100
			SendInput, {SC15}
			Sleep, 100
			SendInput, {Text}%Text5%
			Sleep, 100
			SendInput, {Enter}
	}
	return

Key5Plus:
    If !IsRunning
    {
        IsRunning := true
        SendInput, {SC15}
        Sleep, 100
        SendInput, {Text}%Text5%
        Sleep, 100
        SendInput, {Enter}
        SetTimer, SendTextLoop5, 12000
    }
    else
    {
        IsRunning := false
        SetTimer, SendTextLoop5, Off
    }
    return

SendTextLoop5:
    SendInput, {SC15}
    Sleep, 100
    SendInput, {Text}%Text5%
    Sleep, 100
    SendInput, {Enter}
    return

Key6:
	Loop 1
	{
		if not GetKeyState("Key6")
			Sleep, 100
			SendInput, {SC15}
			Sleep, 100
			SendInput, {Text}%Text6%
			Sleep, 100
			SendInput, {Enter}
	}
	return

Key6Plus:
    If !IsRunning
    {
        IsRunning := true
        SendInput, {SC15}
        Sleep, 100
        SendInput, {Text}%Text6%
        Sleep, 100
        SendInput, {Enter}
        SetTimer, SendTextLoop6, 12000
    }
    else
    {
        IsRunning := false
        SetTimer, SendTextLoop6, Off
    }
    return

SendTextLoop6:
    SendInput, {SC15}
    Sleep, 100
    SendInput, {Text}%Text6%
    Sleep, 100
    SendInput, {Enter}
    return

Key7:
	Loop 1
	{
		if not GetKeyState("Key7")
			Sleep, 100
			SendInput, {SC15}
			Sleep, 100
			SendInput, {Text}%Text7%
			Sleep, 100
			SendInput, {Enter}
	}
	return

Key7Plus:
    If !IsRunning
    {
        IsRunning := true
        SendInput, {SC15}
        Sleep, 100
        SendInput, {Text}%Text7%
        Sleep, 100
        SendInput, {Enter}
        SetTimer, SendTextLoop7, 12000
    }
    else
    {
        IsRunning := false
        SetTimer, SendTextLoop7, Off
    }
    return

SendTextLoop7:
    SendInput, {SC15}
    Sleep, 100
    SendInput, {Text}%Text7%
    Sleep, 100
    SendInput, {Enter}
    return

Key8:
	Loop 1
	{
		if not GetKeyState("Key8")
			Sleep, 100
			SendInput, {SC15}
			Sleep, 100
			SendInput, {Text}%Text8%
			Sleep, 100
			SendInput, {Enter}
	}
	return

Key8Plus:
    If !IsRunning
    {
        IsRunning := true
        SendInput, {SC15}
        Sleep, 100
        SendInput, {Text}%Text8%
        Sleep, 100
        SendInput, {Enter}
        SetTimer, SendTextLoop8, 12000
    }
    else
    {
        IsRunning := false
        SetTimer, SendTextLoop8, Off
    }
    return

SendTextLoop8:
    SendInput, {SC15}
    Sleep, 100
    SendInput, {Text}%Text8%
    Sleep, 100
    SendInput, {Enter}
    return

Key9:
	Loop 1
	{
		if not GetKeyState("Key9")
			Sleep, 100
			SendInput, {SC15}
			Sleep, 100
			SendInput, {Text}%Text9%
			Sleep, 100
			SendInput, {Enter}
	}
	return

Key9Plus:
    If !IsRunning
    {
        IsRunning := true
        SendInput, {SC15}
        Sleep, 100
        SendInput, {Text}%Text9%
        Sleep, 100
        SendInput, {Enter}
        SetTimer, SendTextLoop9, 12000
    }
    else
    {
        IsRunning := false
        SetTimer, SendTextLoop9, Off
    }
    return

SendTextLoop9:
    SendInput, {SC15}
    Sleep, 100
    SendInput, {Text}%Text9%
    Sleep, 100
    SendInput, {Enter}
    return

F2::
	gosub GuiClose
	return

; ----------------------------------------------exit----------------------------------------------

BackFromInstr:
	Gui, Destroy
	return

InstructionsGuiClose:
	Gui, Destroy
	return

SettingsGuiClose:
	Gui, Destroy
	return

GuiClose:
	ExitApp