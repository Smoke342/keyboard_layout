@echo off
setlocal enabledelayedexpansion

rem === SETTINGS ===
set "TARGETS=fc26.exe fc27.exe bf6event.exe"
set "AHK_SCRIPT=C:\Program Files\AutoHotkey\Colemak-DH\colemak-dh.ahk"

rem --- Admin rights check ---
net session >NUL 2>&1
if errorlevel 1 (
    echo [!] Please run this script as Administrator.
    echo [!] Right-click and select "Run as administrator":
    echo     C:\Program Files\AutoHotkey\Colemak-DH\Start Colemak-DH.bat
    pause
    exit /b 1
)

rem Start AHK script ONCE at batch startup
start "" "%AHK_SCRIPT%"

:loop
    rem --- Wait until NO target is running ---
    :wait_off
    set "FOUND=0"
    for %%P in (%TARGETS%) do (
        tasklist /FI "IMAGENAME eq %%P" /NH 2>NUL | find /I "%%P" >NUL
        if not errorlevel 1 set "FOUND=1"
    )
    if "!FOUND!"=="1" goto game_running
    timeout /t 1 /nobreak >NUL
    goto wait_off

    :game_running
    rem Kill ALL known AHK variants (v1 and v2)
    taskkill /F /T /IM AutoHotkey.exe      >NUL 2>&1
    taskkill /F /T /IM AutoHotkeyU64.exe   >NUL 2>&1
    taskkill /F /T /IM AutoHotkeyU32.exe   >NUL 2>&1
    taskkill /F /T /IM AutoHotkeyA32.exe   >NUL 2>&1
    taskkill /F /T /IM AutoHotkey64.exe    >NUL 2>&1
    taskkill /F /T /IM AutoHotkey32.exe    >NUL 2>&1

    rem --- Wait until ALL targets are closed ---
    :wait_close
    set "FOUND=0"
    for %%P in (%TARGETS%) do (
        tasklist /FI "IMAGENAME eq %%P" /NH 2>NUL | find /I "%%P" >NUL
        if not errorlevel 1 set "FOUND=1"
    )
    if "!FOUND!"=="0" goto game_closed
    timeout /t 1 /nobreak >NUL
    goto wait_close

    :game_closed
    rem Target closed — start AHK script again ONCE
    start "" "%AHK_SCRIPT%"
    timeout /t 2 /nobreak >NUL
goto loop

