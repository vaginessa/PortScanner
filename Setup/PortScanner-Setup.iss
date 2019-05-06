; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "PortScanner"
#define MyAppVersion "1.0.0.4"
#define MyAppPublisher "H�mmer Electronics"
#define MyAppURL "www.softwareload24.de.tl"
#define MyAppExeName "PortScanner.exe"
#define MyPath "C:\Users\tim\Desktop\Updaten_Snyk\PortScanner"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A091F362-6E26-451E-B610-272836AAF33D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
UninstallDisplayIcon={app}\{#MyAppExeName}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile={#MyPath}\PortScanner\bin\Debug\License.txt
OutputDir={#MyPath}\Setup
OutputBaseFilename=PortScanner-Setup
SetupIconFile={#MyPath}\PortScanner\bin\Debug\Radar.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "{#MyPath}\PortScanner\bin\Debug\PortScanner.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\PortScanner\bin\Debug\Languages.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\PortScanner\bin\Debug\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\PortScanner\bin\Debug\Radar.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\PortScanner\bin\Debug\languages\*"; DestDir: "{app}\languages\"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

