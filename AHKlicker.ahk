;Start commands

#NoEnv
#InstallMouseHook
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#MaxThreadsPerHotkey 1
#KeyHistory, 0
#NoTrayIcon
#SingleInstance, Force

Suspend,on


;Menu

Var := "
(                                                                 

  ___   _   _  _   ___ _      _             
 / _ \ | | | || | / / (_)    | |            
/ /_\ \| |_| || |/ /| |_  ___| | _____ _ __ 
|  _  ||  _  ||    \| | |/ __| |/ / _ \ '__|
| | | || | | || |\  \ | | (__|   <  __/ |   
\_| |_/\_| |_/\_| \_/_|_|\___|_|\_\___|_|   
                                                                                                    
       Autoclicker - 9 to 13 CPS
         Autopot - 3 to 8 Cycle
   


            -- Keybinds --

          Toggle program ON/OFF - \
        Autoclicker ON/OFF - ALT
          Autopotion ON/OFF - X
         Autopot activation - V
      Block breaking - Hold CAPSLOCK

            -- Keybinds --

         Made by: YeeHay#8729

)"
Gui, Font, s12, Courier New
Gui, Add, Text, cAqua, %Var%
Gui, Show, ,`t
Gui, Color, Black


;Clicker

#if !GetKeyState("CapsLock", "P")
*$LButton::
While GetKeyState("LButton", "P")
if !getkeystate("CapsLock", "P")
{
Click down
Click up
Random, slepp, 28, 40
Sleep %slepp%

Random, spike, 34, 90
if (slepp = 30)
Sleep %spike%
}
return

Alt::Hotkey, $*LButton, Toggle ;Toggles the autoclicker by pressint ALT key


;Autopotion

~$*v::
 pokey++
 if (pokey >= 3)
    Send, %pokey%{RButton}
 if (pokey = 8)
    pokey :=2
return
~$*e::pokey := 2

~$*x::Hotkey, $*v, Toggle ;Toggles the autopotion by pressing V key

;Program pause ( Pauses the program by pressing \ key )

$*\::
Suspend
return


;Application exit

GuiClose:
Exitapp
