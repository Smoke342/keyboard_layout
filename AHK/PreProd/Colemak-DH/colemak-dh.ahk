#Requires AutoHotkey v2+
#SingleInstance Force
SendMode("Input")
SetWorkingDir(A_ScriptDir)
KeyHistory(0)
ListLines(0)
ProcessSetPriority("AboveNormal")

layer := false



; ============================================================
; РАЗНОЕ
; ============================================================

; ===== Фикс залипания слоя Ctrl =====
~*RCtrl Up::
{
    global
    if GetKeyState("SC01D", "P")
    {
        Send("{Blind}{SC01D Up}")
        KeyWait("SC01D", "T0.01")
        if GetKeyState("SC01D", "P")
            DllCall("keybd_event", "UInt", 0x11, "UInt", 0x1D, "UInt", 0, "UInt", 0)
    }
    return
}


; ===== CapsLock → LCtrl =====
$*CapsLock::
{
global
    Send("{Blind}{LCtrl Down}")
return
}

$*CapsLock Up::
{
global
    Send("{Blind}{LCtrl Up}")
return
}


; ===== RShift+CapsLock → CapsLock =====
#HotIf GetKeyState("SC136", "P")
$*CapsLock::
{
global
    SetCapsLockState(!GetKeyState("CapsLock", "T"))
return
}
#HotIf


; ===== qq+Enter → smoke342@gmail.com =====
:OZ:qq::
{
global
if (A_EndChar = "`n")
    SendInput("smoke342@gmail.com")
else if (A_EndChar = " ")
    SendInput("smoke342@gmail.com")
else
    Send("{Raw}qq" A_EndChar)
return
}

:OZ:йй::
{
global
if (A_EndChar = "`n")
    SendInput("smoke342@gmail.com")
else if (A_EndChar = " ")
    SendInput("smoke342@gmail.com")
else
    Send("{Raw}йй" A_EndChar)
return
}


; ===== Другое =====
SC147::Send("{PrintScreen}")		; Home → PrtScn - Добавлено, т.к. на клавиатуре нет клавиши PrtScn
SC151::SendInput("^{PrintScreen}")  ; PgDn → Ctrl+PrtScn - Включить ZoomIt, настраивается в PowerToys
$#SC01F::Send("+#{SC01F}")           ; Win+S - Копирование изображения в буфер обмена



; ============================================================
; СМЕНА ЯЗЫКА
; ============================================================

SC00C::Send("!+8")  ; - → EN
SC00D::Send("!+8")  ; = → EN
SC02B::Send("!+9")  ; \ → RU



; ============================================================
; СЛОЙ CTRL
; ============================================================

; ===== Символы LCtrl =====

#HotIf !GetKeyState("RCtrl", "P")

; ----- Цифры -----
SC01D & SC002::Send("{Blind}{SC01D Up}{«}")          ; 1 → «
SC01D & SC003::Send("{Blind}{SC01D Up}{»}")          ; 2 → »
SC01D & SC004::Send("{Blind}{SC01D Up}{„}")          ; 3 → „
SC01D & SC005::Send("{Blind}{SC01D Up}{“}")          ; 4 → “
SC01D & SC006::Send("{Blind}{SC01D Up}{Ь}")          ; 5 → Ь
SC01D & SC007::Send("{Blind}{SC01D Up}{Ъ}")          ; 6 → Ъ
SC01D & SC008::Send("{Blind}{SC01D Up}{≈}")          ; 7 → ≈
SC01D & SC009::Send("{Blind}{SC01D Up}{↔}")          ; 8 → ↔
SC01D & SC00A::Send("{Blind}{SC01D Up}{←}")          ; 9 → ←
SC01D & SC00B::Send("{Blind}{SC01D Up}{→}")          ; 0 → →
SC01D & SC00C::Return                                ; - → (блок)
SC01D & SC00D::Return                                ; = → (блок)
SC01D & SC02B::Return                                ; \ → (блок)

; ----- Верхний ряд -----
SC01D & SC010::Send("{Blind}{SC01D Up}{``}")         ; q → `
SC01D & SC011::Send("{Blind}{SC01D Up}{@}")          ; w → @
SC01D & SC012::Send("{Blind}{SC01D Up}{[}")          ; e → [
SC01D & SC013::Send("{Blind}{SC01D Up}{]}")          ; r → ]
SC01D & SC014::Send("{Blind}{SC01D Up}{ё}")          ; t → ё
SC01D & SC015::Send("{Blind}{SC01D Up}{Ё}")          ; y → Ё
SC01D & SC016::Send("{Blind}{SC01D Up}{<}")          ; u → <
SC01D & SC017::Send("{Blind}{SC01D Up}{>}")          ; i → >
SC01D & SC018::Send("{Blind}{SC01D Up}{+}")          ; o → +
SC01D & SC019::Send("{Blind}{SC01D Up}{|}")          ; p → |
SC01D & SC01A::Send("{Blind}{SC01D Up}{^}")          ; [ → ^
SC01D & SC01B::Send("{Blind}{SC01D Up}{\}")          ; ] → \

; ----- Средний ряд -----
SC01D & SC01E::Send("{Blind}{SC01D Up}{?}")          ; a → ?
SC01D & SC01F::Send("{Blind}{SC01D Up}{`"}")         ; s → "
SC01D & SC020::Send("{Blind}{SC01D Up}{`{}")         ; d → {
SC01D & SC021::Send("{Blind}{SC01D Up}{`}}")         ; f → }
SC01D & SC022::Send("{Blind}{SC01D Up}{~}")          ; g → ~
SC01D & SC023::Send("{Blind}{SC01D Up}{`%}")         ; h → %
SC01D & SC024::Send("{Blind}{SC01D Up}{(}")          ; j → (
SC01D & SC025::Send("{Blind}{SC01D Up}{)}")          ; k → )
SC01D & SC026::Send("{Blind}{SC01D Up}{-}")          ; l → -
SC01D & SC027::Send("{Blind}{SC01D Up}{_}")          ; ; → _
SC01D & SC028::Send("{Blind}{SC01D Up}{'}")          ; ' → '

; ----- Нижний ряд -----
SC01D & SC02C::Send("{Blind}{SC01D Up}{№}")          ; z → №
SC01D & SC02D::Send("{Blind}{SC01D Up}{#}")          ; x → #
SC01D & SC02E::Send("{Blind}{SC01D Up}{&}")          ; c → &
SC01D & SC02F::Send("{Blind}{SC01D Up}{$}")          ; v → $
SC01D & SC030::Send("{Blind}{SC01D Up}{Backspace}")  ; b → Backspace
SC01D & SC031::Send("{Blind}{SC01D Up}{Backspace}")  ; n → Backspace
SC01D & SC032::Send("{Blind}{SC01D Up}{/}")          ; m → /
SC01D & SC033::Send("{Blind}{SC01D Up}{*}")          ; , → *
SC01D & SC034::Send("{Blind}{SC01D Up}{=}")          ; . → =
SC01D & SC035::Send("{Blind}{SC01D Up}{!}")          ; / → !

; ----- Служебные -----
SC01D & SC00E::Send("{Blind}{SC01D Up}{Backspace}")  ; Backspace → Backspace
SC01D & SC039::Send("{Blind}{SC01D Up}{Space}")      ; Space → Space
SC01D & SC01C::Send("{Blind}{SC01D Up}{Enter}")      ; Enter → Enter
#HotIf


; ===== Символы RCtrl =====

#HotIf !GetKeyState("SC01D", "P")

; ----- Цифры -----
RCtrl & SC002::Send("{Blind}{RCtrl Up}{«}")          ; 1 → «
RCtrl & SC003::Send("{Blind}{RCtrl Up}{»}")          ; 2 → »
RCtrl & SC004::Send("{Blind}{RCtrl Up}{„}")          ; 3 → „
RCtrl & SC005::Send("{Blind}{RCtrl Up}{“}")          ; 4 → “
RCtrl & SC006::Send("{Blind}{RCtrl Up}{Ь}")          ; 5 → Ь
RCtrl & SC007::Send("{Blind}{RCtrl Up}{Ъ}")          ; 6 → Ъ
RCtrl & SC008::Send("{Blind}{RCtrl Up}{≈}")          ; 7 → ≈
RCtrl & SC009::Send("{Blind}{RCtrl Up}{↔}")          ; 8 → ↔
RCtrl & SC00A::Send("{Blind}{RCtrl Up}{←}")          ; 9 → ←
RCtrl & SC00B::Send("{Blind}{RCtrl Up}{→}")          ; 0 → →
RCtrl & SC00C::Return                                ; - → (блок)
RCtrl & SC00D::Return                                ; = → (блок)
RCtrl & SC02B::Return                                ; \ → (блок)

; ----- Верхний ряд -----
RCtrl & SC010::Send("{Blind}{RCtrl Up}{``}")         ; q → `
RCtrl & SC011::Send("{Blind}{RCtrl Up}{@}")          ; w → @
RCtrl & SC012::Send("{Blind}{RCtrl Up}{[}")          ; e → [
RCtrl & SC013::Send("{Blind}{RCtrl Up}{]}")          ; r → ]
RCtrl & SC014::Send("{Blind}{RCtrl Up}{ё}")          ; t → ё
RCtrl & SC015::Send("{Blind}{RCtrl Up}{Ё}")          ; y → Ё
RCtrl & SC016::Send("{Blind}{RCtrl Up}{<}")          ; u → <
RCtrl & SC017::Send("{Blind}{RCtrl Up}{>}")          ; i → >
RCtrl & SC018::Send("{Blind}{RCtrl Up}{+}")          ; o → +
RCtrl & SC019::Send("{Blind}{RCtrl Up}{|}")          ; p → |
RCtrl & SC01A::Send("{Blind}{RCtrl Up}{^}")          ; [ → ^
RCtrl & SC01B::Send("{Blind}{RCtrl Up}{\}")          ; ] → \

; ----- Средний ряд -----
RCtrl & SC01E::Send("{Blind}{RCtrl Up}{?}")          ; a → ?
RCtrl & SC01F::Send("{Blind}{RCtrl Up}{`"}")         ; s → "
RCtrl & SC020::Send("{Blind}{RCtrl Up}{`{}")         ; d → {
RCtrl & SC021::Send("{Blind}{RCtrl Up}{`}}")         ; f → }
RCtrl & SC022::Send("{Blind}{RCtrl Up}{~}")          ; g → ~
RCtrl & SC023::Send("{Blind}{RCtrl Up}{`%}")         ; h → %
RCtrl & SC024::Send("{Blind}{RCtrl Up}{(}")          ; j → (
RCtrl & SC025::Send("{Blind}{RCtrl Up}{)}")          ; k → )
RCtrl & SC026::Send("{Blind}{RCtrl Up}{-}")          ; l → -
RCtrl & SC027::Send("{Blind}{RCtrl Up}{_}")          ; ; → _
RCtrl & SC028::Send("{Blind}{RCtrl Up}{'}")          ; ' → '

; ----- Нижний ряд -----
RCtrl & SC02C::Send("{Blind}{RCtrl Up}{№}")          ; z → №
RCtrl & SC02D::Send("{Blind}{RCtrl Up}{#}")          ; x → #
RCtrl & SC02E::Send("{Blind}{RCtrl Up}{&}")          ; c → &
RCtrl & SC02F::Send("{Blind}{RCtrl Up}{$}")          ; v → $
RCtrl & SC030::Send("{Blind}{RCtrl Up}{Backspace}")  ; b → Backspace
RCtrl & SC031::Send("{Blind}{RCtrl Up}{Backspace}")  ; n → Backspace
RCtrl & SC032::Send("{Blind}{RCtrl Up}{/}")          ; m → /
RCtrl & SC033::Send("{Blind}{RCtrl Up}{*}")          ; , → *
RCtrl & SC034::Send("{Blind}{RCtrl Up}{=}")          ; . → =
RCtrl & SC035::Send("{Blind}{RCtrl Up}{!}")          ; / → !

; ----- Служебные -----
RCtrl & SC00E::Send("{Blind}{RCtrl Up}{Backspace}")  ; Backspace → Backspace
RCtrl & SC039::Send("{Blind}{RCtrl Up}{Space}")      ; Space → Space
RCtrl & SC01C::Send("{Blind}{RCtrl Up}{Enter}")      ; Enter → Enter
#HotIf


; ===== ТОЧЕЧНОЕ ГЛУШЕНИЕ КЛАВИШ ПРИ ДВУХ ЗАЖАТЫХ CTRL =====

#HotIf GetKeyState("SC01D", "P") && GetKeyState("RCtrl", "P")

; ----- Цифры -----
*SC002:: ; 1
*SC003:: ; 2
*SC004:: ; 3
*SC005:: ; 4
*SC006:: ; 5
*SC007:: ; 6
*SC008:: ; 7
*SC009:: ; 8
*SC00A:: ; 9
*SC00B:: ; 0
*SC00C:: ; -
*SC00D:: ; =
*SC02B:: ; \

; ----- Верхний ряд -----
*SC010:: ; q
*SC011:: ; w
*SC012:: ; e
*SC013:: ; r
*SC014:: ; t
*SC015:: ; y
*SC016:: ; u
*SC017:: ; i
*SC018:: ; o
*SC019:: ; p
*SC01A:: ; [
*SC01B:: ; ]

; ----- Средний ряд -----
*SC01E:: ; a
*SC01F:: ; s
*SC020:: ; d
*SC021:: ; f
*SC022:: ; g
*SC023:: ; h
*SC024:: ; j
*SC025:: ; k
*SC026:: ; l
*SC027:: ; ;
*SC028:: ; '

; ----- Нижний ряд -----
*SC02C:: ; z
*SC02D:: ; x
*SC02E:: ; c
*SC02F:: ; v
*SC030:: ; b
*SC031:: ; n
*SC032:: ; m
*SC033:: ; ,
*SC034:: ; .
*SC035:: ; /

; ----- Служебные -----
*SC00E:: ; Backspace
*SC039:: ; Space
*SC01C:: ; Enter

#HotIf



; ============================================================
; СЛОЙ НАВИГАЦИИ
; ============================================================

; Alt в этот слой не назначать, он залипает

SC029::Return  ; ` → Активируем Слой Навигации

#HotIf GetKeyState("SC029", "P")

    ; ----- Стрелки -----
    *SC017::Send("{Blind}{Up}")       ; i → Up
    *SC025::Send("{Blind}{Down}")     ; k → Down
    *SC024::Send("{Blind}{Left}")     ; j → Left
    *SC026::Send("{Blind}{Right}")    ; l → Right
    *SC023::Send("{Blind}{Home}")     ; h → Home
	*SC027::Send("{Blind}{End}")      ; ; → End
	*SC028::Send("{Blind}{End}")      ; ' → End
    *SC016::Send("{Blind}{PgUp}")     ; u → PgUp
    *SC015::Send("{Blind}{PgUp}")     ; y → PgUp
    *SC018::Send("{Blind}{PgDn}")     ; o → PgDn
    *SC019::Send("{Blind}{PgDn}")     ; p → PgDn

    ; ----- Служебные -----
    *SC010::Send("{Blind}{LCtrl Down}")  ; q → LCtrl
    *SC010 Up::Send("{Blind}{LCtrl Up}")
    *SC012::Send("{Blind}{LCtrl Down}")  ; e → LCtrl
    *SC012 Up::Send("{Blind}{LCtrl Up}")
    *SC011::Send("{Blind}{LCtrl Down}")  ; w → LCtrl
    *SC011 Up::Send("{Blind}{LCtrl Up}")
    *SC013::Send("{Blind}{LCtrl Down}")  ; r → LCtrl
    *SC013 Up::Send("{Blind}{LCtrl Up}")

    *SC01E::Send("{Blind}{LShift Down}") ; a → LShift
    *SC01E Up::Send("{Blind}{LShift Up}")
    *SC021::Send("{Blind}{LShift Down}") ; f → LShift
    *SC021 Up::Send("{Blind}{LShift Up}")
    *SC020::Send("{Blind}{LShift Down}") ; d → LShift
    *SC020 Up::Send("{Blind}{LShift Up}")
    *SC01F::Send("{Blind}{LShift Down}") ; s → LShift
    *SC01F Up::Send("{Blind}{LShift Up}")

    *SC032::Send("{Blind}{Backspace}")   ; m → Backspace
    *SC031::Send("{Blind}{Backspace}")   ; n → Backspace
    *SC030::Send("{Blind}{Backspace}")   ; b → Backspace
    *SC02F::Send("{Blind}{Backspace}")   ; v → Backspace
    *SC02E::Send("{Blind}{Backspace}")   ; c → Backspace
    *SC02D::Send("{Blind}{Backspace}")   ; x → Backspace
    *SC02C::Send("{Blind}{Backspace}")   ; z → Backspace

    ; ----- Заглушки -----
	*SC002::Return  ; 1
    *SC003::Return  ; 2
    *SC004::Return  ; 3
    *SC005::Return  ; 4
    *SC006::Return  ; 5
    *SC007::Return  ; 6
    *SC008::Return  ; 7
    *SC009::Return  ; 8
    *SC00A::Return  ; 9
    *SC00B::Return  ; 0
    *SC014::Return  ; t
    *SC01A::Return  ; [
    *SC01B::Return  ; ]
    *SC022::Return  ; g
    *SC033::Return  ; ,
    *SC034::Return  ; .
    *SC035::Return  ; /

#HotIf

*SC029 Up::Send("{Blind}{LCtrl Up}{Blind}{LShift Up}")  ; Фикс залипания



; ============================================================
; NUMPAD
; ============================================================

*RAlt::
{
    global layer
    layer := true
}

*RAlt Up::
{
    global layer
    layer := false
}


#HotIf (layer)

    ; ----- Цифры -----
    SC01E::Send("{0}")  ; a → 0
    SC02D::Send("{1}")  ; x → 1
    SC02E::Send("{2}")  ; c → 2
    SC02F::Send("{3}")  ; v → 3
    SC01F::Send("{4}")  ; s → 4
    SC020::Send("{5}")  ; d → 5
    SC021::Send("{6}")  ; f → 6
    SC011::Send("{7}")  ; w → 7
    SC012::Send("{8}")  ; e → 8
    SC013::Send("{9}")  ; r → 9

    ; ----- Символы -----
	SC022::Send("{Text},")      ; g      → ,
    SC038::Send("{Text}.")      ; LAlt   → .
	SC014::Send("{Text}+")      ; t      → +
	SC030::Send("{Text}-")      ; b      → -
    SC010::Send("{Text}*")      ; q      → *
    SC02C::Send("{NumpadDiv}")  ; z      → NumpadDiv

    ; ----- Стрелки -----
    SC017::Send("{Up}")     ; i → Up
    SC025::Send("{Down}")   ; k → Down
    SC024::Send("{Left}")   ; j → Left
    SC026::Send("{Right}")  ; l → Right
    SC023::Send("{Home}")   ; h → Home
    SC027::Send("{End}")    ; ; → End
    SC028::Send("{End}")    ; ' → End
    SC016::Send("{PgUp}")   ; u → PgUp
    SC015::Send("{PgUp}")   ; y → PgUp
    SC018::Send("{PgDn}")   ; o → PgDn
    SC019::Send("{PgDn}")   ; p → PgDn

    ; ----- Служебные -----
    SC031::Send("{Backspace}")  ; n     → Backspace
    SC032::Send("{Backspace}")  ; m     → Backspace
	SC033::Send("{Backspace}")  ; , 	→ Backspace
    SC034::Send("{Backspace}")  ; . 	→ Backspace
    SC035::Send("{Backspace}")  ; / 	→ Backspace
    SC039::Send("{Space}")      ; Space → Space
    SC001::Send("{Esc}")        ; Esc   → Esc

    ; ----- Заглушки -----
    SC01A::Return  ; [ → (блок)
    SC01B::Return  ; ] → (блок)
	SC01D::Return  ; LCtrl → (блок) - оставить для фикса залипания

#HotIf



; ============================================================
; СЛОЙ SHIFT В РЯДЕ ЦИФР
; ============================================================

; В MSKLC уже стоит блок

; ----- Цифры -----
;$+SC002::Return 	; Shift+1 → (блок)
;$+SC003::Return  	; Shift+2 → (блок)
;$+SC004::Return 	; Shift+3 → (блок)
;$+SC005::Return  	; Shift+4 → (блок)
;$+SC006::Return  	; Shift+5 → (блок)
;$+SC007::Return  	; Shift+6 → (блок)
;$+SC008::Return  	; Shift+7 → (блок)
;$+SC009::Return 	; Shift+8 → (блок)
;$+SC00A::Return 	; Shift+9 → (блок)
;$+SC00B::Return 	; Shift+0 → (блок)

; ----- Смена языка -----
$+SC00C::Send("!+8")  ; Shift+- → EN
$+SC00D::Send("!+8")  ; Shift+= → EN
$+SC02B::Send("!+9")  ; Shift+\ → RU



; ============================================================
; RUSSIAN-DH
; ============================================================

#HotIf (GetLayout() = "RU") && !GetKeyState("SC029", "P")

	$SC032::Send(GetKeyState("CapsLock", "T") ? "Ь" : "ь")       ; ь → Ь при CapsLock
	$+SC032::Send(GetKeyState("CapsLock", "T") ? "Ъ" : "ъ")      ; Shift+ь → Ъ при CapsLock

#HotIf



; ============================================================
; ФУНКЦИЯ ОПРЕДЕЛЕНИЯ РАСКЛАДКИ
; ============================================================

GetLayout() {
    WinID := WinExist("A")
    if (!WinID)
        WinID := DllCall("user32\GetForegroundWindow", "Ptr")
    if (!WinID)
        return "EN"

    ThreadID := DllCall("user32\GetWindowThreadProcessId", "Ptr", WinID, "UInt", 0, "UInt")
    if (ThreadID) {
        layout := DllCall("user32\GetKeyboardLayout", "Ptr", ThreadID, "Ptr") & 0xFFFF
        if (layout = 1049)
            return "RU"
        if (layout = 1033)
            return "EN"
    }
    return "EN"
}

