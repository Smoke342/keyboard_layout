Run, "C:\Users\Smoke342Asus\Desktop\AHK\Colemak.ahk",, , pid1

; Ждём появления процесса первого скрипта (до 10 секунд)
timeout := 10000  ; мс
start := A_TickCount

Loop
{
    Process, Exist, %pid1%
    if (ErrorLevel != 0)  ; процесс найден
        break
    if (A_TickCount - start > timeout)
    {
        MsgBox, Первый скрипт не запустился за 10 секунд.`nВторой скрипт не будет запущен.
        ExitApp
    }
    Sleep, 50
}

Sleep, 1000

; Процесс первого скрипта существует — запускаем второй
Run, "C:\Users\Smoke342Asus\Desktop\AHK\Navigation.ahk"

ExitApp