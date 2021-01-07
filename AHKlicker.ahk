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

            -- Keybinds --

         Made by: YeeHay#8729

)"
Gui, Font, s12, Courier New
Gui, Add, Text, cAqua, %Var%
Gui, Show, ,`t
Gui, Color, Black


;Clicker

*$LButton::
While GetKeyState("LButton", "P")
{
Click down
Click up
Random, slepp, 35, 55
Sleep %slepp%

Random, spike, 120, 210
if (slepp = 100)
Sleep %spike%
}
return

Alt::Hotkey, $*LButton, Toggle ;Toggles the autoclicker by pressint ALT key


;Autopotion

~$*v::
 key++
 if key = 3
    Send, {3}{RButton}

 else if key = 4
    Send, {4}{RButton}

 else if key = 5
    Send, {5}{RButton}
 
 else if key = 6
    Send, {6}{RButton}

 else if key = 7
    Send, {7}{RButton}

 else if key = 8
 {
    Send, {8}{RButton}
    key = 2                   
 }
return

~$*x::Hotkey, $*v, Toggle ;Toggles the autopotion by pressing V key

;Program pause ( Pauses the program by pressing \ key )

$*\::
Suspend
return


;Application exit

GuiClose:
Exitapp