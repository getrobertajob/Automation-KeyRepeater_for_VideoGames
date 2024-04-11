#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


	WinGetTitle, winid, A
	init := 1
	DetectHiddenWindows, On
	Gui Font, s100
	Gui,add,Text,vMyText x-8 y-45 gMove,% Chr(9679)
	Gui -Caption +AlwaysOnTop +LastFound
	WinSet,TransColor,0xF0F0F0
	Gui Show,w70 h70




;Variables
;-------------
;Variable to toggle all of the buttons on/off
VarTog = False
;Variable to check if individual buttons are on
VarTogKey = False
VarCurColor = 0x800080
VarCount = 0
VarMin = 100
VarMax = 200
VarMinC = 1500
VarMaxC = 2000



;Sets starting Toggle mode and MaxThreads
;-------------------------------------------------------------
toggle = 0
#MaxThreadsPerHotkey 2



;Function to randomize pause for button loop for letter keys
;-------------------------------------------------------------
_ran(min, max)
 {
   random, ran, %min%, %max%
;send %ran%
   return ran
 }



;Script to change toggle for all keys, including an interupt
;------------------------------------------------------------------------------
$F12::
Gui Font, cBlack
GuiControl, Font, MyText
if (VarTog = "True") 
    {
        VarTog = False
            if (VarTogKey  = "True")
                {
                    Toggle := !Toggle
                     VarTogKey  = False
					  t := !t
                }
    } 
else if (VarTogKey  = "True")
                {
                    Toggle := !Toggle
                     VarTogKey  = False
					  t := !t
                }
else
    {
        VarTog = True
		Gui Font, cYellow
		GuiControl, Font, MyText
		}
Return



;Script to run for t button
;-------------------------------------------------
$t::
if (VarTog = "True") 
    {
	if (t:=!t){
		Gui Font, cGreen
		GuiControl, Font, MyText
	} else {
		Gui Font, cRed
		GuiControl, Font, MyText
	}
     }
if (VarTog = "True") 
    {
      Toggle := !Toggle
      While Toggle
          {
                 If !Toggle
                 Break
              VarTogKey  = True
			GetKeyState, state, Shift
			if (state = "D") 
				{
				Send, {Shift down}{F10}
				}
				else
              Send, e
              Sleep, % _ran(VarMin, VarMax)
                 If !Toggle
                 Break
          }
    }
    else
    {
          Send, e
    }
Return


Move:
	PostMessage, 0xA1, 2,,, A
Return





;Script to run for Alt + t button
;-------------------------------------------------
$!t::
if (VarTog = "True") 
    {
	if (t:=!t){
		Gui Font, cGreen
		GuiControl, Font, MyText
	} else {
		Gui Font, cRed
		GuiControl, Font, MyText
	}
     }
if (VarTog = "True") 
    {
      Toggle := !Toggle
      While Toggle
          {
                 If !Toggle
                 Break
              VarTogKey  = True
              Send, +5
              Sleep, % _ran(85, 95)
                 If !Toggle
                 Break
          }
    }
    else
    {
          Send, T
    }
Return





;Script to run for Left Mouse using the Y button to trigger
;-------------------------------------------------
$y::
if (VarTog = "True") 
    {
	if (t:=!t){
		Gui Font, cGreen
		GuiControl, Font, MyText
	} else {
		Gui Font, cRed
		GuiControl, Font, MyText
	}
     }
if (VarTog = "True") 
    {
      Toggle := !Toggle
      While Toggle
          {
                 If !Toggle
                 Break
              VarTogKey  = True
			GetKeyState, state, Shift
			if (state = "D") 
				{
				Send, {Shift down}{F10}
				}
				else
	      ;Send {Shift down}
              MouseClick, left
              ;sendinput, +{lbutton}
              Sleep, 100
                 If !Toggle
                 Break
          }
    }
    else
    {
          Send, y
    }
Return

;Script to run for u button
;-------------------------------------------------
$u::
if (VarTog = "True") 
    {
	if (t:=!t){
		Gui Font, cGreen
		GuiControl, Font, MyText
	} else {
		Gui Font, cRed
		GuiControl, Font, MyText
	}
     }
if (VarTog = "True") 
    {
      Toggle := !Toggle
      While Toggle
          {
                 If !Toggle
                 Break
              VarTogKey  = True
			GetKeyState, state, Shift
			if (state = "D") 
				{
				Send, {Shift down}{F10}
				}
				else
              ;Set 1
              Send, 7
              Sleep, 500
              Send, 6
              Sleep, 500
              Send, 7
              Sleep, 500
              Send, 3
              Sleep, 500
              Send, 5
              Sleep, 1000
              Send, 6
              Sleep, 1000

                 If !Toggle
                 Break

              ;Set 2
              Send, 7
              Sleep, 500
              Send, 6
              Sleep, 500
              Send, 7
              Sleep, 500
              Send, 3
              Sleep, 500
              Send, 5
              Sleep, 1000
              Send, 6
              Sleep, 1000

                 If !Toggle
                 Break

              ;Set 3
              Send, 7
              Sleep, 500
              Send, 6
              Sleep, 500
              Send, 5
              Sleep, 1000
              Send, {3 down}
              Sleep, 500
              Send, {3 up}
              Sleep, 1000

                 If !Toggle
                 Break

              ;Set 4
              Send, 7
              Sleep, 500
              Send, 6
              Sleep, 500
              Send, 5
              Sleep, 1000
              Send, {3 down}
              Sleep, 500
              Send, {3 up}
              Sleep, 1000

                 If !Toggle
                 Break
          }
    }
    else
    {
          Send, u
    }
Return

