#Requires AutoHotkey v2.0

!a::Send '{LWin down}{Tab}{LWin up}'

!Left::Send  '{LCtrl down}{LWin down}{Left}{LWin up}{LCtrl up}'

!Right::Send '{LCtrl down}{LWin down}{Right}{LWin up}{LCtrl up}'

; Alt + Enter  -> Windows Terminal
!Enter:: {
    try Run('wt.exe')          ; wt.exe is on PATH since Win 10 21H2
}

; Alt + Q      -> close active window (same as Alt+F4)
!q::Send '!{F4}'

; Alt + F  –  toggle maximize / restore  (v2)
!f:: {
    if (WinGetMinMax('A') = 1)   ; 1 = currently maximized
        WinRestore 'A'
    else
        WinMaximize 'A'
}