#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance FORCE  ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ===== Символы LCtrl =====

SC01D & SC002::Send {Blind}{SC01D Up}{«}  ; 1
SC01D & SC003::Send {Blind}{SC01D Up}{»}  ; 2
SC01D & SC004::Send {Blind}{SC01D Up}{Ь}  ; 3
SC01D & SC005::Send {Blind}{SC01D Up}{Ъ}  ; 4
SC01D & SC006::Return                     ; 5
SC01D & SC007::Return                     ; 6
SC01D & SC008::Return                     ; 7
SC01D & SC009::Return                     ; 8
SC01D & SC00A::Send {Blind}{SC01D Up}{←}  ; 9
SC01D & SC00B::Send {Blind}{SC01D Up}{→}  ; 0
SC01D & SC00C::Return                     ; -
SC01D & SC00D::Return                     ; =
SC01D & SC02B::Return                     ; \
SC01D & SC010::Send {Blind}{SC01D Up}{!}  ; q
SC01D & SC011::Send {Blind}{SC01D Up}{&}  ; w
SC01D & SC012::Send {Blind}{SC01D Up}{\}  ; e
SC01D & SC013::Send {Blind}{SC01D Up}{/}  ; r
SC01D & SC014::Send {Blind}{SC01D Up}{ё}  ; t
SC01D & SC015::Send {Blind}{SC01D Up}{Ё}  ; y
SC01D & SC016::Send {Blind}{SC01D Up}{_}  ; u
SC01D & SC017::Send {Blind}{SC01D Up}{*}  ; i
SC01D & SC018::Send {Blind}{SC01D Up}{#}  ; o
SC01D & SC019::Send {Blind}{SC01D Up}{$}  ; p
SC01D & SC01A::Send {Blind}{SC01D Up}{=}  ; [
SC01D & SC01B::Send {Blind}{SC01D Up}{=}  ; ]
SC01D & SC01E::Send {Blind}{SC01D Up}{?}  ; a
SC01D & SC01F::Send {Blind}{SC01D Up}{"}  ; s"
SC01D & SC020::Send {Blind}{SC01D Up}{`{}  ; d
SC01D & SC021::Send {Blind}{SC01D Up}{`}}  ; f
SC01D & SC022::Send {Blind}{SC01D Up}{``}  ; g
SC01D & SC023::Send {Blind}{SC01D Up}{``}  ; h
SC01D & SC024::Send {Blind}{SC01D Up}{(}  ; j
SC01D & SC025::Send {Blind}{SC01D Up}{)}  ; k
SC01D & SC026::Send {Blind}{SC01D Up}{+}  ; l
SC01D & SC027::Send {Blind}{SC01D Up}{-}  ; ;
SC01D & SC028::Send {Blind}{SC01D Up}{'}  ; '
SC01D & SC02C::Send {Blind}{SC01D Up}{`%}  ; z
SC01D & SC02D::Send {Blind}{SC01D Up}{@}  ; x
SC01D & SC02E::Send {Blind}{SC01D Up}{[}  ; c
SC01D & SC02F::Send {Blind}{SC01D Up}{]}  ; v
SC01D & SC030::Send {Blind}{SC01D Up}{Backspace}  ; b
SC01D & SC031::Send {Blind}{SC01D Up}{Backspace}  ; n
SC01D & SC032::Send {Blind}{SC01D Up}{<}  ; m
SC01D & SC033::Send {Blind}{SC01D Up}{>}  ; ,
SC01D & SC034::Send {Blind}{SC01D Up}{|}  ; .
SC01D & SC035::Send {Blind}{SC01D Up}{^}  ; /


; ===== Символы RCtrl =====
 
RCtrl & SC002::Send {Blind}{RCtrl Up}{«}  ; 1
RCtrl & SC003::Send {Blind}{RCtrl Up}{»}  ; 2
RCtrl & SC004::Send {Blind}{RCtrl Up}{Ь}  ; 3
RCtrl & SC005::Send {Blind}{RCtrl Up}{Ъ}  ; 4
RCtrl & SC006::Return                     ; 5
RCtrl & SC007::Return                     ; 6
RCtrl & SC008::Return 					  ; 7
RCtrl & SC009::Return  					  ; 8
RCtrl & SC00A::Send {Blind}{RCtrl Up}{←}  ; 9
RCtrl & SC00B::Send {Blind}{RCtrl Up}{→}  ; 0
RCtrl & SC00C::Return   ; -
RCtrl & SC00D::Return   ; =
RCtrl & SC02B::Return   ; \
RCtrl & SC010::Send {Blind}{RCtrl Up}{!}  ; q
RCtrl & SC011::Send {Blind}{RCtrl Up}{&}  ; w
RCtrl & SC012::Send {Blind}{RCtrl Up}{\}  ; e
RCtrl & SC013::Send {Blind}{RCtrl Up}{/}  ; r
RCtrl & SC014::Send {Blind}{RCtrl Up}{ё}  ; t
RCtrl & SC015::Send {Blind}{RCtrl Up}{Ё}  ; y
RCtrl & SC016::Send {Blind}{RCtrl Up}{_}  ; u
RCtrl & SC017::Send {Blind}{RCtrl Up}{*}  ; i
RCtrl & SC018::Send {Blind}{RCtrl Up}{#}  ; o
RCtrl & SC019::Send {Blind}{RCtrl Up}{$}  ; p
RCtrl & SC01A::Send {Blind}{RCtrl Up}{=}  ; [
RCtrl & SC01B::Send {Blind}{RCtrl Up}{=}  ; ]
RCtrl & SC01E::Send {Blind}{RCtrl Up}{?}  ; a
RCtrl & SC01F::Send {Blind}{RCtrl Up}{"}  ; s"
RCtrl & SC020::Send {Blind}{RCtrl Up}{`{}  ; d
RCtrl & SC021::Send {Blind}{RCtrl Up}{`}}  ; f
RCtrl & SC022::Send {Blind}{RCtrl Up}{``}  ; g
RCtrl & SC023::Send {Blind}{RCtrl Up}{``}  ; h
RCtrl & SC024::Send {Blind}{RCtrl Up}{(}  ; j
RCtrl & SC025::Send {Blind}{RCtrl Up}{)}  ; k
RCtrl & SC026::Send {Blind}{RCtrl Up}{+}  ; l
RCtrl & SC027::Send {Blind}{RCtrl Up}{-}  ; ;
RCtrl & SC028::Send {Blind}{RCtrl Up}{'}  ; '
RCtrl & SC02C::Send {Blind}{RCtrl Up}{`%}  ; z
RCtrl & SC02D::Send {Blind}{RCtrl Up}{@}  ; x
RCtrl & SC02E::Send {Blind}{RCtrl Up}{[}  ; c
RCtrl & SC02F::Send {Blind}{RCtrl Up}{]}  ; v
RCtrl & SC030::Send {Blind}{RCtrl Up}{Backspace}  ; b
RCtrl & SC031::Send {Blind}{RCtrl Up}{Backspace}  ; n
RCtrl & SC032::Send {Blind}{RCtrl Up}{<}  ; m
RCtrl & SC033::Send {Blind}{RCtrl Up}{>}  ; ,
RCtrl & SC034::Send {Blind}{RCtrl Up}{|}  ; .
RCtrl & SC035::Send {Blind}{RCtrl Up}{^}  ; /


; ===== Навигация =====
 
SC029::Send {}  ; `
SC029 & SC017::Send {Blind}{SC029 Up}{Up}  ; i
SC029 & SC025::Send {Blind}{SC029 Up}{Down}  ; k
SC029 & SC024::Send {Blind}{SC029 Up}{Left}  ; j
SC029 & SC026::Send {Blind}{SC029 Up}{Right}  ; l
SC029 & SC023::Send {Blind}{SC029 Up}{Home}  ; h
SC029 & SC027::Send {Blind}{SC029 Up}{End}  ; ;
SC029 & SC028::Send {Blind}{SC029 Up}{End}  ; '
SC029 & SC016::Send {Blind}{SC029 Up}{PgUp}  ; u
SC029 & SC015::Send {Blind}{SC029 Up}{PgUp}  ; y
SC029 & SC018::Send {Blind}{SC029 Up}{PgDn}  ; o
SC029 & SC019::Send {Blind}{SC029 Up}{PgDn}  ; p
SC029 & SC032::Send {Blind}{SC029 Up}{Backspace}  ; m
SC029 & SC031::Send {Blind}{SC029 Up}{Backspace}  ; n
SC029 & SC030::Send {Blind}{SC029 Up}{Backspace}  ; b
SC029 & SC02F::Send {Blind}{SC029 Up}{Backspace}  ; v
SC029 & SC02E::Send {Blind}{SC029 Up}{Backspace}  ; c
SC029 & SC02D::Send {Blind}{SC029 Up}{Backspace}  ; x
SC029 & SC02C::Send {Blind}{SC029 Up}{Backspace}  ; z
SC029 & SC002::LAlt  ; 1
SC029 & SC003::LAlt  ; 2
SC029 & SC004::LAlt  ; 3
SC029 & SC005::LAlt  ; 4
SC029 & SC010::LCtrl  ; q
SC029 & SC012::LCtrl  ; e
SC029 & SC011::LCtrl  ; w
SC029 & SC013::LCtrl  ; r
SC029 & SC01E::LShift  ; a
SC029 & SC021::LShift  ; f
SC029 & SC020::LShift  ; d
SC029 & SC01F::LShift  ; s

; --- заглушки ---
SC029 & SC006::Return   ; 5
SC029 & SC007::Return   ; 6
SC029 & SC008::Return   ; 7
SC029 & SC009::Return   ; 8
SC029 & SC00A::Return   ; 9
SC029 & SC00B::Return   ; 0
SC029 & SC00C::Return   ; -
SC029 & SC00D::Return   ; =
SC029 & SC014::Return   ; t
SC029 & SC01A::Return   ; [
SC029 & SC01B::Return   ; ]
SC029 & SC02B::Return   ; \
SC029 & SC022::Return   ; g
SC029 & SC033::Return   ; ,
SC029 & SC034::Return   ; .
SC029 & SC035::Return   ; /




; ===== NumPad =====
; Через RAlt не работают стандартные горячие клавиши

*RAlt::
    layer := true
return

*RAlt Up::
    layer := false
return


#If (layer)

    ; Цифры
    SC01E::Send {0} ; a
    SC02D::Send {1} ; x
    SC02E::Send {2} ; c
    SC02F::Send {3} ; v
    SC01F::Send {4} ; s
    SC020::Send {5} ; d
    SC021::Send {6} ; f
    SC011::Send {7} ; w
    SC012::Send {8} ; e
    SC013::Send {9} ; r

    ; Символы
    SC02A::Send {,}         ; LShift
    SC038::Send {.}         ; LAlt
    SC022::Send {+}         ; g
    SC014::Send {-}         ; t
    SC010::Send {*}         ; q
    SC02C::Send {NumpadDiv} ; z

    ; Стрелки NumPad
    SC017::Send {Up}     ; i
    SC025::Send {Down}   ; k
    SC024::Send {Left}   ; j
    SC026::Send {Right}  ; l
    SC023::Send {Home}   ; h
    SC027::Send {End}    ; ;
    SC028::Send {End}    ; '
    SC016::Send {PgUp}   ; u
    SC015::Send {PgUp}   ; y
    SC018::Send {PgDn}   ; o
    SC019::Send {PgDn}   ; p
	
	    ; Служебные
    SC01D::Send {Enter}      ; LCtrl
    SC030::Send {Backspace}  ; b
    SC031::Send {Backspace}  ; n
    SC032::Send {Backspace}  ; m
    SC039::Send {Space}      ; Space
    SC001::Send {Esc}        ; Esc
	
	; Заглушки
    SC00C::Return   ; -
    SC00D::Return   ; =
    SC02B::Return   ; \
    SC01A::Return   ; [
    SC01B::Return   ; ]
    SC033::Return   ; ,
    SC034::Return   ; .
    SC035::Return   ; /

#If
