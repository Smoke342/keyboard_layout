#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance FORCE  ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RShift & CapsLock::CapsLock  ; Нужно, т.к. Capslock → LCtrl через PowerToys
CapsLock::LCtrl

; Навигация
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
SC029 & SC021::LShift  ; f
SC029 & SC020::LShift  ; d
SC029 & SC01F::LShift  ; s
SC029 & SC012::LCtrl  ; e
SC029 & SC011::LCtrl  ; w
SC029 & SC002::LAlt  ; 1
SC029 & SC003::LAlt  ; 2

;NumPad
SC138::Send {}  ; RAlt
SC138 & SC01E::Send {Blind}{SC138 Up}{0}  ; a
SC138 & SC02D::Send {Blind}{SC138 Up}{1}  ; x
SC138 & SC02E::Send {Blind}{SC138 Up}{2}  ; c
SC138 & SC02F::Send {Blind}{SC138 Up}{3}  ; v
SC138 & SC01F::Send {Blind}{SC138 Up}{4}  ; s
SC138 & SC020::Send {Blind}{SC138 Up}{5}  ; d
SC138 & SC021::Send {Blind}{SC138 Up}{6}  ; f
SC138 & SC011::Send {Blind}{SC138 Up}{7}  ; w
SC138 & SC012::Send {Blind}{SC138 Up}{8}  ; e
SC138 & SC013::Send {Blind}{SC138 Up}{9}  ; r
SC138 & SC02A::Send {Blind}{SC138 Up}{,}  ; LShift
SC138 & SC038::Send {Blind}{SC138 Up}{.}  ; LAlt
SC138 & SC022::Send {Blind}{SC138 Up}{+}  ; g
SC138 & SC014::Send {Blind}{SC138 Up}{-}  ; t
SC138 & SC010::Send {Blind}{SC138 Up}{*}  ; q
SC138 & SC02C::Send {Blind}{SC138 Up}{NumpadDiv}  ; z
SC138 & SC01D::Send {Blind}{SC138 Up}{Enter}  ; LCtrl
SC138 & SC030::Send {Blind}{SC138 Up}{Backspace}  ; b
SC138 & SC031::Send {Blind}{SC138 Up}{Backspace}  ; n
SC138 & SC032::Send {Blind}{SC138 Up}{Backspace}  ; m
SC138 & SC039::Send {Blind}{SC138 Up}{Space}  ; Space
SC138 & SC001::Send {Blind}{SC138 Up}{Esc}  ; Esc

;Стрелки NumPad
SC138 & SC017::Send {Blind}{SC138 Up}{Up}  ; i
SC138 & SC025::Send {Blind}{SC138 Up}{Down}  ; k
SC138 & SC024::Send {Blind}{SC138 Up}{Left}  ; j
SC138 & SC026::Send {Blind}{SC138 Up}{Right}  ; l
SC138 & SC023::Send {Blind}{SC138 Up}{Home}  ; h
SC138 & SC027::Send {Blind}{SC138 Up}{End}  ; ;
SC138 & SC028::Send {Blind}{SC138 Up}{End}  ; '
SC138 & SC016::Send {Blind}{SC138 Up}{PgUp}  ; u
SC138 & SC015::Send {Blind}{SC138 Up}{PgUp}  ; y
SC138 & SC018::Send {Blind}{SC138 Up}{PgDn}  ; o
SC138 & SC019::Send {Blind}{SC138 Up}{PgDn}  ; p

; Символы LCtrl
SC01D & SC002::Send {Blind}{SC01D Up}{«}  ; 1
SC01D & SC003::Send {Blind}{SC01D Up}{»}  ; 2
SC01D & SC00B::Send {Blind}{SC01D Up}{↔}  ; 0
SC01D & SC00C::Send {Blind}{SC01D Up}{←}  ; -
SC01D & SC00D::Send {Blind}{SC01D Up}{→}  ; =
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
SC01D & SC01F::Send {Blind}{SC01D Up}{"}  ; s
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
SC01D & SC030::Send {Blind}{SC01D Up}{Ъ}  ; b
SC01D & SC031::Send {Blind}{SC01D Up}{Ь}  ; n
SC01D & SC032::Send {Blind}{SC01D Up}{<}  ; m
SC01D & SC033::Send {Blind}{SC01D Up}{>}  ; ,
SC01D & SC034::Send {Blind}{SC01D Up}{|}  ; .
SC01D & SC035::Send {Blind}{SC01D Up}{^}  ; /

; Символы RCtrl
RCtrl & SC002::Send {Blind}{RCtrl Up}{«}  ; 1
RCtrl & SC003::Send {Blind}{RCtrl Up}{»}  ; 2
RCtrl & SC00B::Send {Blind}{RCtrl Up}{↔}  ; 0
RCtrl & SC00C::Send {Blind}{RCtrl Up}{←}  ; -
RCtrl & SC00D::Send {Blind}{RCtrl Up}{→}  ; =
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
RCtrl & SC01F::Send {Blind}{RCtrl Up}{"}  ; s
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
RCtrl & SC030::Send {Blind}{RCtrl Up}{Ъ}  ; b
RCtrl & SC031::Send {Blind}{RCtrl Up}{Ь}  ; n
RCtrl & SC032::Send {Blind}{RCtrl Up}{<}  ; m
RCtrl & SC033::Send {Blind}{RCtrl Up}{>}  ; ,
RCtrl & SC034::Send {Blind}{RCtrl Up}{|}  ; .
RCtrl & SC035::Send {Blind}{RCtrl Up}{^}  ; /