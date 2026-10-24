#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance FORCE  ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ============================================================
; РАЗНОЕ
; ============================================================
; Поставить запуск от имени администратора файлов AutoHotkeyU64 и AutoHotkeyU64_UIA; путь C:\Program Files\AutoHotkey\v1.1.37.02
; Поставить запуск от имени администратора всех приложений, использующих настраиваемые горячие клавиши (пример - Mahou)
; Посмотреть, не кофликтуют ли горячие клавиши из скрипта с настраиваемыми горячими клавишами приложений (пример - PowerToys)

RShift & CapsLock::CapsLock   ;  Сделано, т.к. LCtrl → CapsLock
;:*:@@`n::smoke342@gmail.com   ;  @@ + Enter - Сделано для быстрого ввода эл. почты
CapsLock::LCtrl              ;  Уже есть в PowerToys (добавить только в крайнем случае). Если вкл., то → RShift & CapsLock::CapsLock работать не будет
#SC01F::Send, +#{SC01F}          ; Win+S - Копирование изображения в буфер обмена.
;#SC02F::Send, ^+{SC02F}         ;Win+V - Вставка без форматирования. Сделать в PowerToys в Расширенной вставке. 


; ============================================================
; СМЕНА ЯЗЫКА
; ============================================================

; Назначить в настройках Windows смену языка на горячие клавиши Alt+Shift+8 = Англ.; Alt+Shift+9 = Рус.
SC00C::Send, !+8  ; - → ENG
SC00D::Send, !+8  ; = → ENG
SC02B::Send, !+9  ; \ → RUS

; ============================================================
; ОТКЛЮЧЕНИЕ СЛОЯ SHIFT В РЯДЕ ЦИФР
; ============================================================

$+1::Return   ; 1
$+2::Return   ; 2
$+3::Return   ; 3
$+4::Return   ; 4
$+5::Return   ; 5
$+6::Return   ; 6
$+7::Return   ; 7
$+8::Return   ; 8
$+9::Return   ; 9
$+0::Return   ; 0
$+-::Return   ; -
$+=::Return   ; =
$+\::Return   ; \

; ============================================================
; RUSSIAN-DH
; ============================================================
#If (GetLayout() = "RU")

; 1. Маленькие буквы и базовые знаки
$sc01B::Send % GetKeyState("CapsLock", "T") ? "Э" : "э"   ; Физическая [Х / ъ] -> э/Э
$sc027::Send % GetKeyState("CapsLock", "T") ? "Ю" : "ю"   ; Физическая [Ж / ;] -> ю/Ю
$sc028::Send % GetKeyState("CapsLock", "T") ? "Ж" : "ж"   ; Физическая [Э / '] -> ж/Ж
$sc033::Send `,  ; Физическая [Б / ,] -> ,
$sc034::Send .   ; Физическая [Ю / .] -> .
$sc035::Send % GetKeyState("CapsLock", "T") ? "Б" : "б"   ; Физическая [/ / .] -> б/Б

; 2. Большие буквы и Shift-знаки
$+sc01B::Send % GetKeyState("CapsLock", "T") ? "э" : "Э"  ; Инверсия при зажатом Shift
$+sc027::Send % GetKeyState("CapsLock", "T") ? "ю" : "Ю"
$+sc028::Send % GetKeyState("CapsLock", "T") ? "ж" : "Ж"
$+sc033::Send `; ; Shift + [Б / ,] -> ;
$+sc034::Send :  ; Shift + [Ю / .] -> :
$+sc035::Send % GetKeyState("CapsLock", "T") ? "б" : "Б"

#If


; ============================================================
; ENGLISH-DH
; ============================================================
#If (GetLayout() = "EN")

; ---------- Верхний ряд ----------
$sc012::Send % GetKeyState("CapsLock", "T") ? "F" : "f"   ; e -> f/F
$+sc012::Send % GetKeyState("CapsLock", "T") ? "f" : "F"
$sc013::Send % GetKeyState("CapsLock", "T") ? "P" : "p"   ; r -> p/P
$+sc013::Send % GetKeyState("CapsLock", "T") ? "p" : "P"
$sc014::Send % GetKeyState("CapsLock", "T") ? "B" : "b"   ; t -> b/B
$+sc014::Send % GetKeyState("CapsLock", "T") ? "b" : "B"
$sc015::Send % GetKeyState("CapsLock", "T") ? "J" : "j"   ; y -> j/J
$+sc015::Send % GetKeyState("CapsLock", "T") ? "j" : "J"
$sc016::Send % GetKeyState("CapsLock", "T") ? "L" : "l"   ; u -> l/L
$+sc016::Send % GetKeyState("CapsLock", "T") ? "l" : "L"
$sc017::Send % GetKeyState("CapsLock", "T") ? "U" : "u"   ; i -> u/U
$+sc017::Send % GetKeyState("CapsLock", "T") ? "u" : "U"
$sc018::Send % GetKeyState("CapsLock", "T") ? "Y" : "y"   ; o -> y/Y
$+sc018::Send % GetKeyState("CapsLock", "T") ? "y" : "Y"
$sc019::return       ; p (блок)
$+sc019::return
$sc01A::return       ; [ (блок)
$+sc01A::return
$sc01B::return       ; ] (блок)
$+sc01B::return

; ---------- Средний ряд ----------
$sc01F::Send % GetKeyState("CapsLock", "T") ? "R" : "r"   ; s -> r/R
$+sc01F::Send % GetKeyState("CapsLock", "T") ? "r" : "R"
$sc020::Send % GetKeyState("CapsLock", "T") ? "S" : "s"   ; d -> s/S
$+sc020::Send % GetKeyState("CapsLock", "T") ? "s" : "S"
$sc021::Send % GetKeyState("CapsLock", "T") ? "T" : "t"   ; f -> t/T
$+sc021::Send % GetKeyState("CapsLock", "T") ? "t" : "T"
$sc023::Send % GetKeyState("CapsLock", "T") ? "M" : "m"   ; h -> m/M
$+sc023::Send % GetKeyState("CapsLock", "T") ? "m" : "M"
$sc024::Send % GetKeyState("CapsLock", "T") ? "N" : "n"   ; j -> n/N
$+sc024::Send % GetKeyState("CapsLock", "T") ? "n" : "N"
$sc025::Send % GetKeyState("CapsLock", "T") ? "E" : "e"   ; k -> e/E
$+sc025::Send % GetKeyState("CapsLock", "T") ? "e" : "E"
$sc026::Send % GetKeyState("CapsLock", "T") ? "I" : "i"   ; l -> i/I
$+sc026::Send % GetKeyState("CapsLock", "T") ? "i" : "I"
$sc027::Send % GetKeyState("CapsLock", "T") ? "O" : "o"   ; ; -> o/O
$+sc027::Send % GetKeyState("CapsLock", "T") ? "o" : "O"
$sc028::return       ; ' (блок)
$+sc028::return

; ---------- Нижний ряд ----------
$sc02C::Send % GetKeyState("CapsLock", "T") ? "X" : "x"   ; z -> x/X
$+sc02C::Send % GetKeyState("CapsLock", "T") ? "x" : "X"
$sc02D::Send % GetKeyState("CapsLock", "T") ? "C" : "c"   ; x -> c/C
$+sc02D::Send % GetKeyState("CapsLock", "T") ? "c" : "C"
$sc02E::Send % GetKeyState("CapsLock", "T") ? "D" : "d"   ; c -> d/D
$+sc02E::Send % GetKeyState("CapsLock", "T") ? "d" : "D"
$sc030::Send % GetKeyState("CapsLock", "T") ? "Z" : "z"   ; b -> z/Z
$+sc030::Send % GetKeyState("CapsLock", "T") ? "z" : "Z"
$sc031::Send % GetKeyState("CapsLock", "T") ? "K" : "k"   ; n -> k/K
$+sc031::Send % GetKeyState("CapsLock", "T") ? "k" : "K"
$sc032::Send % GetKeyState("CapsLock", "T") ? "H" : "h"   ; m -> h/H
$+sc032::Send % GetKeyState("CapsLock", "T") ? "h" : "H"

$+sc033::Send `; ; Shift + , -> ;
$sc034::Send .       ; . -> .
$+sc034::Send :  ; Shift + . -> '
$sc035::return       ; / (блок)
$+sc035::return

#If


; ============================================================
; НАДЁЖНАЯ ФУНКЦИЯ ОПРЕДЕЛЕНИЯ РАСКЛАДКИ
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
        if (layout = 1049)  ; Десятичный код русской раскладки
            return "RU"
        if (layout = 1033)  ; Десятичный код английской раскладки
            return "EN"
    }
    return "EN"
}

