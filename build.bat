taskkill /IM "YHotkeys.*" /F /T | "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /in .\src\YHotkeys.ahk /out .\src\YHotkeys.exe /icon .\src\res\seedling.ico && "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /in .\src\lib\util\YUpdater.ahk /out .\src\lib\util\YUpdater.exe /icon .\src\res\update.ico && "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /in .\src\lib\util\installer.ahk /out .\build\YHotkeys-Installer.exe /icon .\src\res\worker.ico && start .\src\YHotkeys.exe
