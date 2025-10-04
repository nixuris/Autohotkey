#Requires AutoHotkey v2.0

; Win + A open Task View
#a::Send '{LWin down}{Tab}{LWin up}'

; Win + Left/Right switch workspaces
#Left::Send  '{LCtrl down}{LWin down}{Left}{LWin up}{LCtrl up}'
#Right::Send '{LCtrl down}{LWin down}{Right}{LWin up}{LCtrl up}'

; Alt + Q      -> close active window (same as Alt+F4)
#q::Send '!{F4}'

; Alt + F  –  toggle maximize / restore  (v2)
#f:: {
    if (WinGetMinMax('A') = 1)   ; 1 = currently maximized
        WinRestore 'A'
    else
        WinMaximize 'A'
}

; Make Win + Tab act like Alt + Tab
#Tab::{
    Send "{Alt down}{Tab}"
    KeyWait("LWin")  ; Wait until Win key is released
    Send "{Alt up}"
}
; Disable Alt + Tab
!Tab::return

;Open apps
#p::Run 'taskmgr.exe'                       ; Task Manager
#Enter::Run 'wt.exe'                        ; Windows Terminal
#t::Run 'explorer.exe'                      ; File Explorer
#s::Run 'explorer.exe ms-screenclip:'       ; interactive Snip & Sketch