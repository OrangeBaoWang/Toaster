; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Toaster
AppVersion=1.0.100 ALPHA
AppCopyright=Thomas Langer
DefaultDirName={pf64}\Toaster
AppPublisher=Thomas Langer
AppUpdatesURL=https://github.com/virango/Toaster/releases
DefaultGroupName=Toaster
LicenseFile=..\Licences\gpl-3.0.txt
OutputDir=.\
OutputBaseFilename=Toaster64_Setup_1.0.100_ALPHA
VersionInfoVersion=1.0.0.0

[Files]
Source: "..\ubuntu-font-family-0.83\CONTRIBUTING.txt"; DestDir: "{app}\Licences\ubuntu-font-family-0.83\"; Flags: ignoreversion
Source: "..\ubuntu-font-family-0.83\copyright.txt"; DestDir: "{app}\Licences\ubuntu-font-family-0.83\"; Flags: ignoreversion
Source: "..\ubuntu-font-family-0.83\FONTLOG.txt"; DestDir: "{app}\Licences\ubuntu-font-family-0.83\"; Flags: ignoreversion
Source: "..\ubuntu-font-family-0.83\LICENCE-FAQ.txt"; DestDir: "{app}\Licences\ubuntu-font-family-0.83\"; Flags: ignoreversion
Source: "..\ubuntu-font-family-0.83\LICENCE.txt"; DestDir: "{app}\Licences\ubuntu-font-family-0.83\"; Flags: ignoreversion
Source: "..\ubuntu-font-family-0.83\README.txt"; DestDir: "{app}\Licences\ubuntu-font-family-0.83\"; Flags: ignoreversion
Source: "..\ubuntu-font-family-0.83\TRADEMARKS.txt"; DestDir: "{app}\Licences\ubuntu-font-family-0.83\"; Flags: ignoreversion
Source: "..\ubuntu-font-family-0.83\Ubuntu-B.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Bold"
Source: "..\ubuntu-font-family-0.83\Ubuntu-BI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Bold Italic"
Source: "..\ubuntu-font-family-0.83\Ubuntu-C.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Condensed"
Source: "..\ubuntu-font-family-0.83\Ubuntu-L.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Light"
Source: "..\ubuntu-font-family-0.83\Ubuntu-LI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Light Italic"
Source: "..\ubuntu-font-family-0.83\Ubuntu-M.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Medium"
Source: "..\ubuntu-font-family-0.83\Ubuntu-MI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Medium Italic"
Source: "..\ubuntu-font-family-0.83\Ubuntu-R.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu"
Source: "..\ubuntu-font-family-0.83\Ubuntu-RI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Italic"
Source: "..\ubuntu-font-family-0.83\UbuntuMono-B.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Mono Bold"
Source: "..\ubuntu-font-family-0.83\UbuntuMono-BI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Mono Bold Italic"
Source: "..\ubuntu-font-family-0.83\UbuntuMono-R.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Mono"
Source: "..\ubuntu-font-family-0.83\UbuntuMono-RI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Mono Italic"
Source: "Toaster64\D3Dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\libGLESV2.dll"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\opengl32sw.dll"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\qtoasterwidgetsplugin.dll"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\toaster.exe"; DestDir: "{app}"; Flags: ignoreversion 64bit
Source: "Toaster64\iconengines\qsvgicon.dll"; DestDir: "{app}\iconengines\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qdds.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qgif.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qicns.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qico.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qjpeg.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qsvg.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qtga.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qtiff.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qwbmp.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\imageformats\qwebp.dll"; DestDir: "{app}\imageformats\"; Flags: ignoreversion 64bit
Source: "Toaster64\platforms\qwindows.dll"; DestDir: "{app}\platforms\"; Flags: ignoreversion 64bit
Source: "Toaster64\translations\qt_ca.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_cs.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_de.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_en.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_fi.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_fr.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_he.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_hu.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_it.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_ja.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_ko.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_lv.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_ru.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_sk.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\translations\qt_uk.qm"; DestDir: "{app}\translations\"; Flags: ignoreversion
Source: "Toaster64\vcredist_x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion
Source: "..\Licences\gpl-3.0.txt"; DestDir: "{app}\Licences"; Flags: ignoreversion
Source: "..\Licences\lgpl-3.0.txt"; DestDir: "{app}\Licences"; Flags: ignoreversion
Source: "..\Licences\RtMidi.txt"; DestDir: "{app}\Licences"; Flags: ignoreversion

[Run]
Filename: "{tmp}\vcredist_x64.exe"; Parameters: "/install /passive /norestart"; WorkingDir: "{tmp}"; Flags: 64bit

[Icons]
Name: "{group}\Toaster"; Filename: "{app}\toaster.exe"; WorkingDir: "{app}"; IconFilename: "{app}\toaster.exe"
Name: "{userdesktop}\Toaster"; Filename: "{app}\toaster.exe"; WorkingDir: "{app}"; IconFilename: "{app}\toaster.exe"