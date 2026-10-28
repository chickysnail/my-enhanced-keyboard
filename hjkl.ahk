; Enhanced Keyboard v2.0.0
; Requires AutoHotkey v1.1 (not v2)

﻿SetCapsLockState, AlwaysOff

; hjkl: j/k are arrows, h/l are word jump
CapsLock & k::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Up}
    else if GetKeyState("Ctrl", "D")
        Send +!{Up}
    else
        Send +{Up}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Up}
    else
        Send !{Up}
else if GetKeyState("Alt", "D")
    Send ^{Up}
else
    Send {Up}
return

CapsLock & j::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Down}
    else if GetKeyState("Ctrl", "D")
        Send +!{Down}
    else
        Send +{Down}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Down}
    else
        Send !{Down}
else if GetKeyState("Alt", "D")
    Send ^{Down}
else
    Send {Down}
return

CapsLock & h::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!^{Left}
    else
        Send +^{Left}
else if GetKeyState("Alt", "D")
    Send !^{Left}
else
    Send ^{Left}
return

CapsLock & l::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!^{Right}
    else
        Send +^{Right}
else if GetKeyState("Alt", "D")
    Send !^{Right}
else
    Send ^{Right}
return

; yuio as arrows with CapsLock (Vim-style)
CapsLock & y::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{Left}
    else if GetKeyState("Ctrl", "D")
        Send +^{Left}
    else
        Send +{Left}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Left}
    else
        Send ^{Left}
else if GetKeyState("Alt", "D")
    Send !{Left}
else
    Send {Left}
return

CapsLock & u::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{Home}
    else if GetKeyState("Ctrl", "D")
        Send +^{Home}
    else
        Send +{Home}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Home}
    else
        Send ^{Home}
else if GetKeyState("Alt", "D")
    Send !{Home}
else
    Send {Home}
return

CapsLock & i::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{End}
    else if GetKeyState("Ctrl", "D")
        Send +^{End}
    else
        Send +{End}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{End}
    else
        Send ^{End}
else if GetKeyState("Alt", "D")
    Send !{End}
else
    Send {End}
return

CapsLock & o::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{Right}
    else if GetKeyState("Ctrl", "D")
        Send +^{Right}
    else
        Send +{Right}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Right}
    else
        Send ^{Right}
else if GetKeyState("Alt", "D")
    Send !{Right}
else
    Send {Right}
return

; Prevent AltGr (LAlt) from focusing app menus
~LAlt::Send {Blind}{vkE8}

; Tap AltGr (LAlt) alone to send Win+Space
LAlt Up::
    if (A_PriorKey = "LAlt" || A_PriorKey = "LControl")
        Send, #{Space}
return

CapsLock & p:: send, {PgUp}

CapsLock & w:: Send, ^w
CapsLock & r:: Send, ^r
CapsLock & c:: Send, ^c
CapsLock & v:: Send, ^v
CapsLock & x:: Send, ^x
CapsLock & Enter:: Send, ^{Enter}
CapsLock & z:: Send, ^z          ; Undo
CapsLock & a:: Send, ^a          ; Select all
CapsLock & s:: Send, ^s          ; Save
CapsLock & f:: Send, ^f          ; Find
CapsLock & d:: Send, ^d          ; Duplicate line/selection
CapsLock & b:: Send, ^b          ; Bold (in text editors)
CapsLock & t:: Send, ^t          ; New tab
CapsLock & n:: Send, ^n          ; New file/window
CapsLock & Tab:: Send, ^{Tab}    ; Ctrl-Tab tab switcher
CapsLock & `:: Send, ^``         ; Toggle terminal (VS Code)
CapsLock & /:: Send, ^/          ; Toggle comment
CapsLock & Space:: Send, ^{Space} ; Autocomplete/suggestions
CapsLock & Backspace:: Send, ^{Backspace} ; Delete word
CapsLock & Delete:: Send, ^{Delete}       ; Delete word forward

~Backspace::
    if GetKeyState("1", "P")
        Send, {Backspace 1}
    else if GetKeyState("2", "P")
        Send, {Backspace 2}
    else if GetKeyState("3", "P")
        Send, {Backspace 3}
    else if GetKeyState("4", "P")
        Send, {Backspace 4}
    else if GetKeyState("5", "P")
        Send, {Backspace 5}
    else if GetKeyState("6", "P")
        Send, {Backspace 6}
    else if GetKeyState("7", "P")
        Send, {Backspace 7}
    else if GetKeyState("8", "P")
        Send, {Backspace 8}
    else if GetKeyState("9", "P")
        Send, {Backspace 9}
    else if GetKeyState("0", "P")
        Send, {Backspace 10}
return