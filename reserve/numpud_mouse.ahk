; Активация слоя NumPad на RAlt и зажатие боковых кнопок мыши (при этом одиночные нажатия работают как обычно)
; Вставить в начале скрипта блок с глобальными переменными, остальное в начало слоя NumPad



; ============================================================
; ИНИЦИАЛИЗАЦИЯ ГЛОБАЛЬНЫХ ПЕРЕМЕННЫХ СЛОЕВ
; ============================================================

layer := false
mouse_combo := false
x1_down := false
x2_down := false



; ============================================================
; NUMPAD
; ============================================================

; ----- Зажатие RAlt -----

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


; ----- Зажатие боковых кнопок мыши -----

$*XButton1::
{
    global layer, mouse_combo, x1_down, x2_down
    x1_down := true
    if (x2_down)
    {
        layer := true
        mouse_combo := true
    }
}

$*XButton1 Up::
{
    global layer, mouse_combo, x1_down, x2_down
    x1_down := false
    
    if (mouse_combo)
    {
        if (!x1_down && !x2_down)
        {
            layer := false
            mouse_combo := false
        }
    }
    else
    {
        Send("{XButton1}")
    }
}

$*XButton2::
{
    global layer, mouse_combo, x1_down, x2_down
    x2_down := true
    if (x1_down)
    {
        layer := true
        mouse_combo := true
    }
}

$*XButton2 Up::
{
    global layer, mouse_combo, x1_down, x2_down
    x2_down := false
    
    if (mouse_combo)
    {
        if (!x1_down && !x2_down)
        {
            layer := false
            mouse_combo := false
        }
    }
    else
    {
        Send("{XButton2}")
    }
}

