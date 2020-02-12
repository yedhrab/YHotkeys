﻿; ####################################################################################
; ##                                                                                ##
; ##                                   KISAYOLLAR                                   ##
; ##                                                                                ##
; ####################################################################################

; https://windows.yemreak.com/autohotkey/diger-islemler#hotkeys-butonlari

#SingleInstance, Force
#KeyHistory, 0
#MaxThreadsPerHotkey, 1

SetBatchLines, -1
ListLines, Off

return

; ---------------------------------- Özellik Kısayolları ----------------------------------

#Space::
    ToggleWindowPin()
return
#^G::
    SearchOnGoogle()
return
#^E::
    OpenInFileExplorer()
return
#^C::
    OpenInCommandPrompt()
return
#^T::
    TranslateOnGoogle()
return
#^N::
    KeepOnNotepad()
return
#^+U::
    ToUpperCase()
return
#^+L::
    ToLowerCase()
return
#^+T::
    ToTitleCase()
return
#^+I::
    ToInverted()
return
#^+E::
    ToEncode()
return
#^+D::
    ToDecode()
return
!"::
    SwitchWindow()
return

#F1::Suspend

; ---------------------------------- Çalıştır ----------------------------------

#+e::Run, explorer

; ---------------------------------- Göster / Gizle ----------------------------------

#q::
    name := "- OneNote"
    com := createAppCommand("Microsoft.Office.OneNote_8wekyb3d8bbwe!microsoft.onenoteim")
    mode := 2
    OpenWindowByTitle(name, com, mode)
return

#x::
    name := "- Calendar"
    com := createAppCommand("microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar")
    mode := 2
    OpenWindowByTitle(name, com, mode)
return

#c::
    ; BUG: Hesap makinesi tekrardan açılmıyor
    name := "Calculator"
    com := createAppCommand("Microsoft.WindowsCalculator_8wekyb3d8bbwe!App")
    mode := 2
    OpenWindowByTitle(name, com, mode)
return

; --------------------------------- Tray Kısayolları ---------------------------------

; #"::
;     name := "WindowsTerminal.exe"
;     com := createAppCommand("Microsoft.WindowsTerminal_8wekyb3d8bbwe!App"
;     mode := 2
;     OpenWindowInTray("exe", name, com, mode)
; return

#w::
    name := "WhatsApp"
    com := createAppCommand("5319275A.WhatsAppDesktop_cv1g1gvanyjgm!WhatsAppDesktop")
    mode := 2
    OpenWindowInTray("title", name, com, mode)
return

#g::
    name := "GitHub Desktop"
    com := GetEnvPath("localappdata", "\GitHubDesktop\GitHubDesktop.exe")
    mode := 3
    OpenWindowInTray("title", name, com, mode)
return

#e::
    name := "CabinetWClass"
    com := "explorer.exe"
    OpenWindowInTray("class", name, com)
return

#t::
    name := " Microsoft Teams"
    com := GetEnvPath("localappdata", "\Microsoft\Teams\Update.exe --processStart ""Teams.exe""")
    mode := 2
    OpenWindowInTray("title", name, com, mode)
return

; --------------------------------- Python | Özel Kısayollar ---------------------------------

#^!+s::
    name := "ShareX"
    com := createAppCommand("19568ShareX.ShareX_egrzcvs15399j!ShareX")
    mode := 3
    OpenWindowInTray("title", name, com, mode)
return

; -------------------------------- Koşullu Kısayollar ---------------------------------
; WARN: En alta yazılmazsa sonrasındakilerin çalışmasını engeller, IfWındows yapılması gerekir

#If MouseIsOver("ahk_class Shell_TrayWnd") ; For MouseIsOver, see #If example 1.
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}
^WheelUp::Send {B}
^WheelDown::Send {Volume_Down}
#IfWinActive
