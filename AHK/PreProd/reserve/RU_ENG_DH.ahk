;RU_ENG_DH - скрипт, выполняющий функции MSKLC

;Для работы NumPad в RU нужно установить раскладку russian_fix_altgr
;Горячие клавиши работают практически везде, кроме тех программ, которые испольуют в качестве хоткея вводимый символ, а не скан-код (например - CVAT)

;Вставить RU_ENG_DH в конец скрипта colemak-dh


; ============================================================
; СЛОЙ SHIFT В РЯДЕ ЦИФР
; ============================================================

 ----- Цифры -----
$+SC002::Return 	; Shift+1 → (блок)
$+SC003::Return  	; Shift+2 → (блок)
$+SC004::Return 	; Shift+3 → (блок)
$+SC005::Return  	; Shift+4 → (блок)
$+SC006::Return  	; Shift+5 → (блок)
$+SC007::Return  	; Shift+6 → (блок)
$+SC008::Return  	; Shift+7 → (блок)
$+SC009::Return 	; Shift+8 → (блок)
$+SC00A::Return 	; Shift+9 → (блок)
$+SC00B::Return 	; Shift+0 → (блок)

; ----- Смена языка -----
$+SC00C::Send("!+8")  ; Shift+- → EN
$+SC00D::Send("!+8")  ; Shift+= → EN
$+SC02B::Send("!+9")  ; Shift+\ → RU



; ============================================================
; RUSSIAN-DH
; ============================================================

#HotIf (GetLayout() = "RU") && !GetKeyState("SC029", "P")

	; ----- Верхний ряд -----
	$SC01B::Send(GetKeyState("CapsLock", "T") ? "Э" : "э")   ; ъ → э
	$+SC01B::Send(GetKeyState("CapsLock", "T") ? "э" : "Э")  ; Ъ → Э


	; ----- Средний ряд -----
	$SC027::Send(GetKeyState("CapsLock", "T") ? "Ю" : "ю")   ; ж → ю
	$+SC027::Send(GetKeyState("CapsLock", "T") ? "ю" : "Ю")  ; Ж → Ю

	$SC028::Send(GetKeyState("CapsLock", "T") ? "Ж" : "ж")   ; э → ж
	$+SC028::Send(GetKeyState("CapsLock", "T") ? "ж" : "Ж")  ; Э → Ж


	; ----- Нижний ряд -----
	$SC033::Send(",")                                        ; б → ,
	$+SC033::Send("`;")                                      ; Б → ;

	$SC034::Send(".")                                        ; ю → .
	$+SC034::Send(":")                                       ; Ю → :

	$SC035::Send(GetKeyState("CapsLock", "T") ? "Б" : "б")   ; . → б
	$+SC035::Send(GetKeyState("CapsLock", "T") ? "б" : "Б")  ; , → Б
	
	$+SC032::Send(GetKeyState("CapsLock", "T") ? "Ъ" : "ъ")  ; Ь → ъ

#HotIf



; ============================================================
; ENGLISH-DH
; ============================================================

#HotIf (GetLayout() = "EN") && !GetKeyState("SC029", "P")

	; ----- Верхний ряд -----
	$SC012::Send(GetKeyState("CapsLock", "T") ? "F" : "f")   ; e → f
	$+SC012::Send(GetKeyState("CapsLock", "T") ? "f" : "F")  ; E → F

	$SC013::Send(GetKeyState("CapsLock", "T") ? "P" : "p")   ; r → p
	$+SC013::Send(GetKeyState("CapsLock", "T") ? "p" : "P")  ; R → P

	$SC014::Send(GetKeyState("CapsLock", "T") ? "B" : "b")   ; t → b
	$+SC014::Send(GetKeyState("CapsLock", "T") ? "b" : "B")  ; T → B

	$SC015::Send(GetKeyState("CapsLock", "T") ? "J" : "j")   ; y → j
	$+SC015::Send(GetKeyState("CapsLock", "T") ? "j" : "J")  ; Y → J

	$SC016::Send(GetKeyState("CapsLock", "T") ? "L" : "l")   ; u → l
	$+SC016::Send(GetKeyState("CapsLock", "T") ? "l" : "L")  ; U → L

	$SC017::Send(GetKeyState("CapsLock", "T") ? "U" : "u")   ; i → u
	$+SC017::Send(GetKeyState("CapsLock", "T") ? "u" : "U")  ; I → U

	$SC018::Send(GetKeyState("CapsLock", "T") ? "Y" : "y")   ; o → y
	$+SC018::Send(GetKeyState("CapsLock", "T") ? "y" : "Y")  ; O → Y

	$SC019::return       ; p → (блок)
	$+SC019::return      ; P → (блок)
	
	$SC01A::return       ; [ → (блок)
	$+SC01A::return      ; { → (блок)
	
	$SC01B::return       ; ] → (блок)
	$+SC01B::return      ; } → (блок)


	; ----- Средний ряд -----
	$SC01F::Send(GetKeyState("CapsLock", "T") ? "R" : "r")   ; s → r
	$+SC01F::Send(GetKeyState("CapsLock", "T") ? "r" : "R")  ; S → R

	$SC020::Send(GetKeyState("CapsLock", "T") ? "S" : "s")   ; d → s
	$+SC020::Send(GetKeyState("CapsLock", "T") ? "s" : "S")  ; D → S

	$SC021::Send(GetKeyState("CapsLock", "T") ? "T" : "t")   ; f → t
	$+SC021::Send(GetKeyState("CapsLock", "T") ? "t" : "T")  ; F → T

	$SC023::Send(GetKeyState("CapsLock", "T") ? "M" : "m")   ; h → m
	$+SC023::Send(GetKeyState("CapsLock", "T") ? "m" : "M")  ; H → M

	$SC024::Send(GetKeyState("CapsLock", "T") ? "N" : "n")   ; j → n
	$+SC024::Send(GetKeyState("CapsLock", "T") ? "n" : "N")  ; J → N

	$SC025::Send(GetKeyState("CapsLock", "T") ? "E" : "e")   ; k → e
	$+SC025::Send(GetKeyState("CapsLock", "T") ? "e" : "E")  ; K → E

	$SC026::Send(GetKeyState("CapsLock", "T") ? "I" : "i")   ; l → i
	$+SC026::Send(GetKeyState("CapsLock", "T") ? "i" : "I")  ; L → I

	$SC027::Send(GetKeyState("CapsLock", "T") ? "O" : "o")   ; ; → o
	$+SC027::Send(GetKeyState("CapsLock", "T") ? "o" : "O")  ; : → O

	$SC028::return       ; ' → (блок)
	$+SC028::return      ; " → (блок)


	; ----- Нижний ряд -----
	$SC02C::Send(GetKeyState("CapsLock", "T") ? "X" : "x")   ; z → x
	$+SC02C::Send(GetKeyState("CapsLock", "T") ? "x" : "X")  ; Z → X

	$SC02D::Send(GetKeyState("CapsLock", "T") ? "C" : "c")   ; x → c
	$+SC02D::Send(GetKeyState("CapsLock", "T") ? "c" : "C")  ; X → C

	$SC02E::Send(GetKeyState("CapsLock", "T") ? "D" : "d")   ; c → d
	$+SC02E::Send(GetKeyState("CapsLock", "T") ? "d" : "D")  ; C → D

	$SC030::Send(GetKeyState("CapsLock", "T") ? "Z" : "z")   ; b → z
	$+SC030::Send(GetKeyState("CapsLock", "T") ? "z" : "Z")  ; B → Z

	$SC031::Send(GetKeyState("CapsLock", "T") ? "K" : "k")   ; n → k
	$+SC031::Send(GetKeyState("CapsLock", "T") ? "k" : "K")  ; N → K

	$SC032::Send(GetKeyState("CapsLock", "T") ? "H" : "h")   ; m → h
	$+SC032::Send(GetKeyState("CapsLock", "T") ? "h" : "H")  ; M → H

	$+SC033::Send("`;")  ; < → ;
	
	$+SC034::Send(":")   ; > → :
	
	$SC035::return       ; / → (блок)
	$+SC035::return      ; ? → (блок)

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

