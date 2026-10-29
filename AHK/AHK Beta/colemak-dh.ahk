#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance FORCE  ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Process, Priority,, High
#KeyHistory 0


; ============================================================
; РАЗНОЕ
; ============================================================

; Поставить запуск от имени администратора файлов AutoHotkeyU64 и AutoHotkeyU64_UIA по пути C:\Program Files\AutoHotkey\v1.1.37.02
; Установить RU раскладку из папки "russian_fix_altgr"; перезагрузить ПК; Параметры → Время и язык → Язык и регион → Русский → Языковые параметры → Клавиатуры - удалить стандартную раскладку, оставить только "Русская без AltGr"
; Назначить в настройках Windows смену языка на горячие клавиши Alt+Shift+8 = EN; Alt+Shift+9 = RU

; В Mahou назначить горячие клавиши: Перевод - Alt+Shift+Ctrl; Транслитерация - Ctrl+Win+Alt
; В Ditto нужно изменить настройки для вставки без форматирования в Word, т.к. ^+v в нем не поддерживается по умолчанию - ЛКМ и Enter поставить на копирование, удалить типы объектов HTML Format и Rich Text Format
; В Word нужно изменить параметр - Файл → Параметры → Дополнительно → Раздел "Вырезание, копирование и вставка" → Снять чекбокс "Показывать кнопки возможностей вставки при вставке содержимого"

; Посмотреть, не конфликтует ли скрипт с важными горячими клавишами приложений (например - PowerToys, Ditto, Mahou)

; Через RAlt не работают стандартные горячие клавиши из-за слоя NumPad
; Горячие клавиши с Ctrl нужно использовать через CapsLock → LCtrl. В редких случаях работает только LCtrl, например Ctrl+Alt+Delete
; В целом все горячие клавиши работают стандартно, в редких случаях что-то может не работать, на это влияют этот скрипт или сторонние приложения


; ===== Фикс залипания слоя Ctrl =====
~*RCtrl Up::
    if GetKeyState("SC01D", "P")
    {
        Send {Blind}{SC01D Up}
        KeyWait, SC01D, T0.01
        if GetKeyState("SC01D", "P")
            dllcall("keybd_event", int, 0x11, int, 0x1D, int, 0, int, 0)
    }
return


; ===== CapsLock → LCtrl =====
$*CapsLock::
    Send {Blind}{LCtrl Down}
return

$*CapsLock Up::
    Send {Blind}{LCtrl Up}
return


; ===== RShift+CapsLock → CapsLock =====
#If GetKeyState("SC136", "P")
$*CapsLock::
    SetCapsLockState % !GetKeyState("CapsLock", "T")
return
#If


; ===== qq+Enter → smoke342@gmail.com =====
:OZ:qq::
if (A_EndChar = "`n")
    SendInput, smoke342@gmail.com
else if (A_EndChar = " ")
    SendInput, smoke342@gmail.com
else
    SendRaw, qq%A_EndChar%
return

:OZ:йй::
if (A_EndChar = "`n")
    SendInput, smoke342@gmail.com
else if (A_EndChar = " ")
    SendInput, smoke342@gmail.com
else
    SendRaw, йй%A_EndChar%
return


; ===== Другое =====
SC147::Send {PrintScreen}		 ; Home → PrtScn - Добавлено, т.к. на клавиатуре нет клавиши PrtScn
SC151::SendInput ^{PrintScreen}  ; PgDn → Ctrl+PrtScn - Включить ZoomIt, настраивается в PowerToys
#SC01F::Send, +#{SC01F}          ; Win+S - Копирование изображения в буфер обмена


; ============================================================
; СМЕНА ЯЗЫКА
; ============================================================

SC00C::Send, !+8  ; - → EN
SC00D::Send, !+8  ; = → EN
SC02B::Send, !+9  ; \ → RU


; ============================================================
; СЛОИ
; ============================================================

; ===== Символы LCtrl =====

#If !GetKeyState("RCtrl", "P")

; ----- Цифры -----
SC01D & SC002::Send {Blind}{SC01D Up}{«}          ; 1 → «
SC01D & SC003::Send {Blind}{SC01D Up}{»}          ; 2 → »
SC01D & SC004::Send {Blind}{SC01D Up}{„}          ; 3 → „
SC01D & SC005::Send {Blind}{SC01D Up}{“}          ; 4 → “
SC01D & SC006::Send {Blind}{SC01D Up}{Ь}          ; 5 → Ь
SC01D & SC007::Send {Blind}{SC01D Up}{Ъ}          ; 6 → Ъ
SC01D & SC008::Send {Blind}{SC01D Up}{≈}          ; 7 → ≈
SC01D & SC009::Send {Blind}{SC01D Up}{↔}          ; 8 → ↔
SC01D & SC00A::Send {Blind}{SC01D Up}{←}          ; 9 → ←
SC01D & SC00B::Send {Blind}{SC01D Up}{→}          ; 0 → →
SC01D & SC00C::Return                             ; - → (блок)
SC01D & SC00D::Return                             ; = → (блок)
SC01D & SC02B::Return                             ; \ → (блок)

; ----- Верхний ряд -----
SC01D & SC010::Send {Blind}{SC01D Up}{!}          ; q → !
SC01D & SC011::Send {Blind}{SC01D Up}{&}          ; w → &
SC01D & SC012::Send {Blind}{SC01D Up}{\}          ; e → \
SC01D & SC013::Send {Blind}{SC01D Up}{/}          ; r → /
SC01D & SC014::Send {Blind}{SC01D Up}{ё}          ; t → ё
SC01D & SC015::Send {Blind}{SC01D Up}{Ё}          ; y → Ё
SC01D & SC016::Send {Blind}{SC01D Up}{_}          ; u → _
SC01D & SC017::Send {Blind}{SC01D Up}{*}          ; i → *
SC01D & SC018::Send {Blind}{SC01D Up}{#}          ; o → #
SC01D & SC019::Send {Blind}{SC01D Up}{$}          ; p → $
SC01D & SC01A::Send {Blind}{SC01D Up}{=}          ; [ → =
SC01D & SC01B::Send {Blind}{SC01D Up}{№}          ; ] → №

; ----- Средний ряд -----
SC01D & SC01E::Send {Blind}{SC01D Up}{?}          ; a → ?
SC01D & SC01F::Send {Blind}{SC01D Up}{"}          ; s → "
SC01D & SC020::Send {Blind}{SC01D Up}{`{}         ; d → {
SC01D & SC021::Send {Blind}{SC01D Up}{`}}         ; f → }
SC01D & SC022::Send {Blind}{SC01D Up}{~}          ; g → ~
SC01D & SC023::Send {Blind}{SC01D Up}{``}         ; h → `
SC01D & SC024::Send {Blind}{SC01D Up}{(}          ; j → (
SC01D & SC025::Send {Blind}{SC01D Up}{)}          ; k → )
SC01D & SC026::Send {Blind}{SC01D Up}{+}          ; l → +
SC01D & SC027::Send {Blind}{SC01D Up}{-}          ; ; → -
SC01D & SC028::Send {Blind}{SC01D Up}{'}          ; ' → ' ; Оставить для фикса

; ----- Нижний ряд -----
SC01D & SC02C::Send {Blind}{SC01D Up}{`%}         ; z → %
SC01D & SC02D::Send {Blind}{SC01D Up}{@}          ; x → @
SC01D & SC02E::Send {Blind}{SC01D Up}{[}          ; c → [
SC01D & SC02F::Send {Blind}{SC01D Up}{]}          ; v → ]
SC01D & SC030::Send {Blind}{SC01D Up}{Backspace}  ; b → Backspace
SC01D & SC031::Send {Blind}{SC01D Up}{Backspace}  ; n → Backspace
SC01D & SC032::Send {Blind}{SC01D Up}{<}          ; m → <
SC01D & SC033::Send {Blind}{SC01D Up}{>}          ; , → >
SC01D & SC034::Send {Blind}{SC01D Up}{|}          ; . → |
SC01D & SC035::Send {Blind}{SC01D Up}{^}          ; / → ^

; ----- Служебные -----
SC01D & SC00E::Send {Blind}{SC01D Up}{Backspace}  ; Backspace → Backspace
SC01D & SC039::Send {Blind}{SC01D Up}{Space}      ; Space → Space
#If


; ===== Символы RCtrl =====

#If !GetKeyState("SC01D", "P")

; ----- Цифры -----
RCtrl & SC002::Send {Blind}{RCtrl Up}{«}          ; 1 → «
RCtrl & SC003::Send {Blind}{RCtrl Up}{»}          ; 2 → »
RCtrl & SC004::Send {Blind}{RCtrl Up}{„}          ; 3 → „
RCtrl & SC005::Send {Blind}{RCtrl Up}{“}          ; 4 → “
RCtrl & SC006::Send {Blind}{RCtrl Up}{Ь}          ; 5 → Ь
RCtrl & SC007::Send {Blind}{RCtrl Up}{Ъ}          ; 6 → Ъ
RCtrl & SC008::Send {Blind}{RCtrl Up}{≈}          ; 7 → ≈
RCtrl & SC009::Send {Blind}{RCtrl Up}{↔}          ; 8 → ↔
RCtrl & SC00A::Send {Blind}{RCtrl Up}{←}          ; 9 → ←
RCtrl & SC00B::Send {Blind}{RCtrl Up}{→}          ; 0 → →
RCtrl & SC00C::Return                             ; - → (блок)
RCtrl & SC00D::Return                             ; = → (блок)
RCtrl & SC02B::Return                             ; \ → (блок)

; ----- Верхний ряд -----
RCtrl & SC010::Send {Blind}{RCtrl Up}{!}          ; q → !
RCtrl & SC011::Send {Blind}{RCtrl Up}{&}          ; w → &
RCtrl & SC012::Send {Blind}{RCtrl Up}{\}          ; e → \
RCtrl & SC013::Send {Blind}{RCtrl Up}{/}          ; r → /
RCtrl & SC014::Send {Blind}{RCtrl Up}{ё}          ; t → ё
RCtrl & SC015::Send {Blind}{RCtrl Up}{Ё}          ; y → Ё
RCtrl & SC016::Send {Blind}{RCtrl Up}{_}          ; u → _
RCtrl & SC017::Send {Blind}{RCtrl Up}{*}          ; i → *
RCtrl & SC018::Send {Blind}{RCtrl Up}{#}          ; o → #
RCtrl & SC019::Send {Blind}{RCtrl Up}{$}          ; p → $
RCtrl & SC01A::Send {Blind}{RCtrl Up}{=}          ; [ → =
RCtrl & SC01B::Send {Blind}{RCtrl Up}{№}          ; ] → №

; ----- Средний ряд -----
RCtrl & SC01E::Send {Blind}{RCtrl Up}{?}          ; a → ?
RCtrl & SC01F::Send {Blind}{RCtrl Up}{"}          ; s → "
RCtrl & SC020::Send {Blind}{RCtrl Up}{`{}         ; d → {
RCtrl & SC021::Send {Blind}{RCtrl Up}{`}}         ; f → }
RCtrl & SC022::Send {Blind}{RCtrl Up}{~}          ; g → ~
RCtrl & SC023::Send {Blind}{RCtrl Up}{``}         ; h → `
RCtrl & SC024::Send {Blind}{RCtrl Up}{(}          ; j → (
RCtrl & SC025::Send {Blind}{RCtrl Up}{)}          ; k → )
RCtrl & SC026::Send {Blind}{RCtrl Up}{+}          ; l → +
RCtrl & SC027::Send {Blind}{RCtrl Up}{-}          ; ; → -
RCtrl & SC028::Send {Blind}{RCtrl Up}{'}          ; ' → ' ; Оставить для фикса

; ----- Нижний ряд -----
RCtrl & SC02C::Send {Blind}{RCtrl Up}{`%}         ; z → %
RCtrl & SC02D::Send {Blind}{RCtrl Up}{@}          ; x → @
RCtrl & SC02E::Send {Blind}{RCtrl Up}{[}          ; c → [
RCtrl & SC02F::Send {Blind}{RCtrl Up}{]}          ; v → ]
RCtrl & SC030::Send {Blind}{RCtrl Up}{Backspace}  ; b → Backspace
RCtrl & SC031::Send {Blind}{RCtrl Up}{Backspace}  ; n → Backspace
RCtrl & SC032::Send {Blind}{RCtrl Up}{<}          ; m → <
RCtrl & SC033::Send {Blind}{RCtrl Up}{>}          ; , → >
RCtrl & SC034::Send {Blind}{RCtrl Up}{|}          ; . → |
RCtrl & SC035::Send {Blind}{RCtrl Up}{^}          ; / → ^

; ----- Служебные -----
RCtrl & SC00E::Send {Blind}{RCtrl Up}{Backspace}  ; Backspace → Backspace
RCtrl & SC039::Send {Blind}{RCtrl Up}{Space}      ; Space → Space
#If


; ===== ТОЧЕЧНОЕ ГЛУШЕНИЕ КЛАВИШ ПРИ ДВУХ ЗАЖАТЫХ CTRL =====

#If GetKeyState("SC01D", "P") && GetKeyState("RCtrl", "P")

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
*SC039:: ; Space
*SC00E:: ; Backspace

#If


; ===== Навигация =====

SC029::Return  ; ` → Слой Навигации

; ----- Стрелки -----
SC029 & SC017::Send {Blind}{SC029 Up}{Up}  		  ; i → Up
SC029 & SC025::Send {Blind}{SC029 Up}{Down} 	  ; k → Down
SC029 & SC024::Send {Blind}{SC029 Up}{Left}  	  ; j → Left
SC029 & SC026::Send {Blind}{SC029 Up}{Right} 	  ; l → Right
SC029 & SC023::Send {Blind}{SC029 Up}{Home} 	  ; h → Home
SC029 & SC027::Send {Blind}{SC029 Up}{End}  	  ; ; → End
SC029 & SC028::Send {Blind}{SC029 Up}{End}  	  ; ' → End
SC029 & SC016::Send {Blind}{SC029 Up}{PgUp}  	  ; u → PgUp
SC029 & SC015::Send {Blind}{SC029 Up}{PgUp} 	  ; y → PgUp
SC029 & SC018::Send {Blind}{SC029 Up}{PgDn}  	  ; o → PgDn
SC029 & SC019::Send {Blind}{SC029 Up}{PgDn}  	  ; p → PgDn

; ----- Служебные -----
; ----- Цифры -----
SC029 & SC002::LAlt    ; 1 → LAlt
SC029 & SC003::LAlt    ; 2 → LAlt
SC029 & SC004::LAlt    ; 3 → LAlt
SC029 & SC005::LAlt    ; 4 → LAlt

; ----- Верхний ряд -----
SC029 & SC010::LCtrl   ; q → LCtrl
SC029 & SC012::LCtrl   ; e → LCtrl
SC029 & SC011::LCtrl   ; w → LCtrl
SC029 & SC013::LCtrl   ; r → LCtrl

; ----- Средний ряд -----
SC029 & SC01E::LShift  ; a → LShift
SC029 & SC021::LShift  ; f → LShift
SC029 & SC020::LShift  ; d → LShift
SC029 & SC01F::LShift  ; s → LShift

; ----- Нижний ряд -----
SC029 & SC032::Send {Blind}{SC029 Up}{Backspace}  ; m → Backspace
SC029 & SC031::Send {Blind}{SC029 Up}{Backspace}  ; n → Backspace
SC029 & SC030::Send {Blind}{SC029 Up}{Backspace}  ; b → Backspace
SC029 & SC02F::Send {Blind}{SC029 Up}{Backspace}  ; v → Backspace
SC029 & SC02E::Send {Blind}{SC029 Up}{Backspace}  ; c → Backspace
SC029 & SC02D::Send {Blind}{SC029 Up}{Backspace}  ; x → Backspace
SC029 & SC02C::Send {Blind}{SC029 Up}{Backspace}  ; z → Backspace

; ----- Заглушки -----
SC029 & SC006::Return  ; 5 → (блок)
SC029 & SC007::Return  ; 6 → (блок)
SC029 & SC008::Return  ; 7 → (блок)
SC029 & SC009::Return  ; 8 → (блок)
SC029 & SC00A::Return  ; 9 → (блок)
SC029 & SC00B::Return  ; 0 → (блок)
SC029 & SC00C::Return  ; - → (блок)
SC029 & SC00D::Return  ; = → (блок)
SC029 & SC014::Return  ; t → (блок)
SC029 & SC01A::Return  ; [ → (блок)
SC029 & SC01B::Return  ; ] → (блок)
SC029 & SC02B::Return  ; \ → (блок)
SC029 & SC022::Return  ; g → (блок)
SC029 & SC033::Return  ; , → (блок)
SC029 & SC034::Return  ; . → (блок)
SC029 & SC035::Return  ; / → (блок)
SC029 & RCtrl::Return  ; RCtrl → (блок)


; ----- Фикс залипания Слоя Навигации+RCtrl -----
~*SC029 Up::
    if GetKeyState("RCtrl", "P")
    {
        Send {Blind}{RCtrl Up}
        KeyWait, RCtrl, T0.01
        if GetKeyState("RCtrl", "P")
        {
            dllcall("keybd_event", int, 0x11, int, 0x11D, int, 1, int, 0)
        }
    }
return


; ===== NumPad =====

*RAlt::
    layer := true
return

*RAlt Up::
    layer := false
return


#If (layer)

    ; ----- Цифры -----
    SC01E::Send {0}  ; a → 0
    SC02D::Send {1}  ; x → 1
    SC02E::Send {2}  ; c → 2
    SC02F::Send {3}  ; v → 3
    SC01F::Send {4}  ; s → 4
    SC020::Send {5}  ; d → 5
    SC021::Send {6}  ; f → 6
    SC011::Send {7}  ; w → 7
    SC012::Send {8}  ; e → 8
    SC013::Send {9}  ; r → 9

    ; ----- Символы -----
    SC02A::Send {Text},      ; LShift → ,
    SC038::Send {Text}.      ; LAlt   → .
    SC022::Send {Text}+      ; g      → +
    SC014::Send {Text}-      ; t      → -
    SC010::Send {Text}*      ; q      → *
    SC02C::Send {NumpadDiv}  ; z      → NumpadDiv

    ; ----- Стрелки -----
    SC017::Send {Up}     ; i → Up
    SC025::Send {Down}   ; k → Down
    SC024::Send {Left}   ; j → Left
    SC026::Send {Right}  ; l → Right
    SC023::Send {Home}   ; h → Home
    SC027::Send {End}    ; ; → End
    SC028::Send {End}    ; ' → End
    SC016::Send {PgUp}   ; u → PgUp
    SC015::Send {PgUp}   ; y → PgUp
    SC018::Send {PgDn}   ; o → PgDn
    SC019::Send {PgDn}   ; p → PgDn

    ; ----- Служебные -----
    SC030::Send {Backspace}  ; b     → Backspace
    SC031::Send {Backspace}  ; n     → Backspace
    SC032::Send {Backspace}  ; m     → Backspace
    SC039::Send {Space}      ; Space → Space
    SC001::Send {Esc}        ; Esc   → Esc

    ; ----- Заглушки -----
    SC00C::Return  ; - → (блок)
    SC00D::Return  ; = → (блок)
    SC02B::Return  ; \ → (блок)
    SC01A::Return  ; [ → (блок)
    SC01B::Return  ; ] → (блок)
    SC033::Return  ; , → (блок)
    SC034::Return  ; . → (блок)
    SC035::Return  ; / → (блок)
	SC01D::Return     ; LCtrl → (блок) - оставить для фикса залипания

#If


; ============================================================
; ОТКЛЮЧЕНИЕ СЛОЯ SHIFT В РЯДЕ ЦИФР
; ============================================================

$+SC002::Return  ; Shift+1 → (блок)
$+SC003::Return  ; Shift+2 → (блок)
$+SC004::Return  ; Shift+3 → (блок)
$+SC005::Return  ; Shift+4 → (блок)
$+SC006::Return  ; Shift+5 → (блок)
$+SC007::Return  ; Shift+6 → (блок)
$+SC008::Return  ; Shift+7 → (блок)
$+SC009::Return  ; Shift+8 → (блок)
$+SC00A::Return  ; Shift+9 → (блок)
$+SC00B::Return  ; Shift+0 → (блок)
$+SC00C::Return  ; Shift+- → (блок)
$+SC00D::Return  ; Shift+= → (блок)
$+SC02B::Return  ; Shift+\ → (блок)


; ============================================================
; RUSSIAN-DH
; ============================================================

#If (GetLayout() = "RU")

	; ----- Верхний ряд -----
	$SC01B::Send % GetKeyState("CapsLock", "T") ? "Э" : "э"   ; ъ → э
	$+SC01B::Send % GetKeyState("CapsLock", "T") ? "э" : "Э"  ; Ъ → Э


	; ----- Средний ряд -----
	$SC027::Send % GetKeyState("CapsLock", "T") ? "Ю" : "ю"   ; ж → ю
	$+SC027::Send % GetKeyState("CapsLock", "T") ? "ю" : "Ю"  ; Ж → Ю

	$SC028::Send % GetKeyState("CapsLock", "T") ? "Ж" : "ж"   ; э → ж
	$+SC028::Send % GetKeyState("CapsLock", "T") ? "ж" : "Ж"  ; Э → Ж


	; ----- Нижний ряд -----
	$SC033::Send `,                                           ; б → ,
	$+SC033::Send `;                                          ; Б → ;

	$SC034::Send .                                            ; ю → .
	$+SC034::Send :                                           ; Ю → :

	$SC035::Send % GetKeyState("CapsLock", "T") ? "Б" : "б"   ; . → б
	$+SC035::Send % GetKeyState("CapsLock", "T") ? "б" : "Б"  ; , → Б
	
	$+SC032::Send % GetKeyState("CapsLock", "T") ? "Ъ" : "ъ"  ; Ь → ъ

#If


; ============================================================
; ENGLISH-DH
; ============================================================

#If (GetLayout() = "EN")

	; ----- Верхний ряд -----
	$SC012::Send % GetKeyState("CapsLock", "T") ? "F" : "f"   ; e → f
	$+SC012::Send % GetKeyState("CapsLock", "T") ? "f" : "F"  ; E → F

	$SC013::Send % GetKeyState("CapsLock", "T") ? "P" : "p"   ; r → p
	$+SC013::Send % GetKeyState("CapsLock", "T") ? "p" : "P"  ; R → P

	$SC014::Send % GetKeyState("CapsLock", "T") ? "B" : "b"   ; t → b
	$+SC014::Send % GetKeyState("CapsLock", "T") ? "b" : "B"  ; T → B

	$SC015::Send % GetKeyState("CapsLock", "T") ? "J" : "j"   ; y → j
	$+SC015::Send % GetKeyState("CapsLock", "T") ? "j" : "J"  ; Y → J

	$SC016::Send % GetKeyState("CapsLock", "T") ? "L" : "l"   ; u → l
	$+SC016::Send % GetKeyState("CapsLock", "T") ? "l" : "L"  ; U → L

	$SC017::Send % GetKeyState("CapsLock", "T") ? "U" : "u"   ; i → u
	$+SC017::Send % GetKeyState("CapsLock", "T") ? "u" : "U"  ; I → U

	$SC018::Send % GetKeyState("CapsLock", "T") ? "Y" : "y"   ; o → y
	$+SC018::Send % GetKeyState("CapsLock", "T") ? "y" : "Y"  ; O → Y

	$SC019::return       ; p → (блок)
	$+SC019::return      ; P → (блок)
	
	$SC01A::return       ; [ → (блок)
	$+SC01A::return      ; { → (блок)
	
	$SC01B::return       ; ] → (блок)
	$+SC01B::return      ; } → (блок)


	; ----- Средний ряд -----
	$SC01F::Send % GetKeyState("CapsLock", "T") ? "R" : "r"   ; s → r
	$+SC01F::Send % GetKeyState("CapsLock", "T") ? "r" : "R"  ; S → R

	$SC020::Send % GetKeyState("CapsLock", "T") ? "S" : "s"   ; d → s
	$+SC020::Send % GetKeyState("CapsLock", "T") ? "s" : "S"  ; D → S

	$SC021::Send % GetKeyState("CapsLock", "T") ? "T" : "t"   ; f → t
	$+SC021::Send % GetKeyState("CapsLock", "T") ? "t" : "T"  ; F → T

	$SC023::Send % GetKeyState("CapsLock", "T") ? "M" : "m"   ; h → m
	$+SC023::Send % GetKeyState("CapsLock", "T") ? "m" : "M"  ; H → M

	$SC024::Send % GetKeyState("CapsLock", "T") ? "N" : "n"   ; j → n
	$+SC024::Send % GetKeyState("CapsLock", "T") ? "n" : "N"  ; J → N

	$SC025::Send % GetKeyState("CapsLock", "T") ? "E" : "e"   ; k → e
	$+SC025::Send % GetKeyState("CapsLock", "T") ? "e" : "E"  ; K → E

	$SC026::Send % GetKeyState("CapsLock", "T") ? "I" : "i"   ; l → i
	$+SC026::Send % GetKeyState("CapsLock", "T") ? "i" : "I"  ; L → I

	$SC027::Send % GetKeyState("CapsLock", "T") ? "O" : "o"   ; ; → o
	$+SC027::Send % GetKeyState("CapsLock", "T") ? "o" : "O"  ; : → O

	$SC028::return       ; ' → (блок)
	$+SC028::return      ; " → (блок)


	; ----- Нижний ряд -----
	$SC02C::Send % GetKeyState("CapsLock", "T") ? "X" : "x"   ; z → x
	$+SC02C::Send % GetKeyState("CapsLock", "T") ? "x" : "X"  ; Z → X

	$SC02D::Send % GetKeyState("CapsLock", "T") ? "C" : "c"   ; x → c
	$+SC02D::Send % GetKeyState("CapsLock", "T") ? "c" : "C"  ; X → C

	$SC02E::Send % GetKeyState("CapsLock", "T") ? "D" : "d"   ; c → d
	$+SC02E::Send % GetKeyState("CapsLock", "T") ? "d" : "D"  ; C → D

	$SC030::Send % GetKeyState("CapsLock", "T") ? "Z" : "z"   ; b → z
	$+SC030::Send % GetKeyState("CapsLock", "T") ? "z" : "Z"  ; B → Z

	$SC031::Send % GetKeyState("CapsLock", "T") ? "K" : "k"   ; n → k
	$+SC031::Send % GetKeyState("CapsLock", "T") ? "k" : "K"  ; N → K

	$SC032::Send % GetKeyState("CapsLock", "T") ? "H" : "h"   ; m → h
	$+SC032::Send % GetKeyState("CapsLock", "T") ? "h" : "H"  ; M → H

	$+SC033::Send `;  ; < → ;
	
	$+SC034::Send :   ; > → :
	
	$SC035::return       ; / → (блок)
	$+SC035::return      ; ? → (блок)

#If


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

