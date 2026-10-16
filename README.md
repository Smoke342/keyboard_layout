# Общая схема раскладки
<img width="2033" height="681" alt="keyboard_layout_clear" src="https://github.com/user-attachments/assets/27193007-2c18-49fd-9400-ee9bca44543d" />

Клавиша смены языка настроена через программу [Mahou](https://gitea.com/BladeMight/Mahou)

`CapsLock` переназначен на `LCtrl` через программу [PowerToys](https://github.com/microsoft/PowerToys)

Сам `CapsLock` включается через сочетание клавиш *RShift & CapsLock* (настроено через скрипт [AHK](https://github.com/AutoHotkey/AutoHotkey))

Расположение букв и специальных символов настроены через KLC файлы (установка которых проводится программой [MSKLC](https://www.microsoft.com/en-us/download/details.aspx?id=102134))

Шорткаты используются из Qwerty раскладки. В некоторых программах при включенной английской раскладке могут использоваться шорткаты из Colemak-DH

## Расположение букв
### Английская раскладка
Расположение английских букв аналогично раскладке [Colemak-DH](https://colemakmods.github.io/mod-dh/)
### Русская раскладка
В русской раскладке буквы **`Б` `Ю` `Ж` `Э` `Ъ`** были перемещены на другие клавиши.

Маленький твердый знак **`ъ`** печатается через сочетание клавиш *Shift & ь*

Недостающие буквы в русской раскладке **`ё` `Ё` `Ь` `Ъ`** были убраны в слой AltGr:
```Autohotkey
AltGr & е::ё
AltGr & н::Ё
AltGr & ь::Ь
AltGr & т::Ъ
```

## Специальные символы
Специальные символы были перемещены на новые места, чтобы была возможность печатать их вне зависимости от выбора русской или английской раскладки
(схема специальных символов одна, неважно какой язык выбран)

Символы, указанные в правом верхнем углу клавиши находятся в слое AltGr

![AltGr](https://user-images.githubusercontent.com/127750149/232326974-76366019-b3dd-48b5-b0dd-a43567ef53b3.png)

## Слой навигации
При зажатии кнопки `~` будет активен слой навигации (настроено через скрипт [AHK](https://github.com/AutoHotkey/AutoHotkey)). На схеме раскладки клавиши этого слоя имеют зеленый цвет. Значение клавиш указаны на передней стороне клавиш.

<img width="2033" height="684" alt="keyboard_layout_~" src="https://github.com/user-attachments/assets/8e4aabaf-4eda-4e3d-9061-56ba5bf9b263" />

## Слой NumPad
При зажатии кнопки `RCtrl` будет активен слой NumPad (настроено через скрипт [AHK](https://github.com/AutoHotkey/AutoHotkey)).
На схеме раскладки клавиши этого слоя имеют синий цвет. Значение клавиш указаны на передней стороне клавиш.

<img width="2035" height="683" alt="keyboard-layout_numpad" src="https://github.com/user-attachments/assets/50e23a1a-1714-4bc2-b9cb-1363644b3ca3" />
