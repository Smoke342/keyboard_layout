#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance FORCE  ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RShift & CapsLock::CapsLock  ; Нужно, т.к. Capslock → LCtrl через PowerToys

RAlt & SC029::Send ~  ; Через MSKLC символ не печатается, мешает этот скрипт
RAlt & Backspace::Send {Blind}{RAlt Up}{Backspace}  ; Добавлено для удобства

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

;NumPad
SC11D::Send {}  ; RCtrl
SC11D & SC01E::Send {Blind}{SC11D Up}{0}  ; a
SC11D & SC02D::Send {Blind}{SC11D Up}{1}  ; x
SC11D & SC02E::Send {Blind}{SC11D Up}{2}  ; c
SC11D & SC02F::Send {Blind}{SC11D Up}{3}  ; v
SC11D & SC01F::Send {Blind}{SC11D Up}{4}  ; s
SC11D & SC020::Send {Blind}{SC11D Up}{5}  ; d
SC11D & SC021::Send {Blind}{SC11D Up}{6}  ; f
SC11D & SC011::Send {Blind}{SC11D Up}{7}  ; w
SC11D & SC012::Send {Blind}{SC11D Up}{8}  ; e
SC11D & SC013::Send {Blind}{SC11D Up}{9}  ; r
SC11D & SC02A::Send {Blind}{SC11D Up}{,}  ; LShift
SC11D & SC038::Send {Blind}{SC11D Up}{.}  ; LAlt
SC11D & SC022::Send {Blind}{SC11D Up}{+}  ; g
SC11D & SC014::Send {Blind}{SC11D Up}{-}  ; t
SC11D & SC010::Send {Blind}{SC11D Up}{*}  ; q
SC11D & SC02C::Send {Blind}{SC11D Up}{NumpadDiv}  ; z
SC11D & SC01D::Send {Blind}{SC11D Up}{Enter}  ; LCtrl
SC11D & SC030::Send {Blind}{SC11D Up}{Backspace}  ; b
SC11D & SC031::Send {Blind}{SC11D Up}{Backspace}  ; n
SC11D & SC032::Send {Blind}{SC11D Up}{Backspace}  ; m
SC11D & SC039::Send {Blind}{SC11D Up}{Space}  ; Space
SC11D & SC001::Send {Blind}{SC11D Up}{Esc}  ; Esc
;Стрелки NumPad
SC11D & SC017::Send {Blind}{SC11D Up}{Up}  ; i
SC11D & SC025::Send {Blind}{SC11D Up}{Down}  ; k
SC11D & SC024::Send {Blind}{SC11D Up}{Left}  ; j
SC11D & SC026::Send {Blind}{SC11D Up}{Right}  ; l
SC11D & SC023::Send {Blind}{SC11D Up}{Home}  ; h
SC11D & SC027::Send {Blind}{SC11D Up}{End}  ; ;
SC11D & SC028::Send {Blind}{SC11D Up}{End}  ; '
SC11D & SC016::Send {Blind}{SC11D Up}{PgUp}  ; u
SC11D & SC015::Send {Blind}{SC11D Up}{PgUp}  ; y
SC11D & SC018::Send {Blind}{SC11D Up}{PgDn}  ; o
SC11D & SC019::Send {Blind}{SC11D Up}{PgDn}  ; p
