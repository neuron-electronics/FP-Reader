; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "FP Reader"
#define MyAppVersion "1.1"
#define MyAppPublisher "Neuron Electronics Inc."
#define MyAppExeName "fpReader.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1B3D8244-ACCA-4BD3-8112-2C9A90A8E787}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\Friedrich\Documents\Programmieren\FP-Reader\License.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\Friedrich\Documents\Programmieren
OutputBaseFilename=FP Reader Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Friedrich\Documents\Programmieren\FP-Reader\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Friedrich\Documents\Programmieren\FP-Reader\Chalk.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Friedrich\Documents\Programmieren\FP-Reader\Figgle.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Friedrich\Documents\Programmieren\FP-Reader\fileReader.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Friedrich\Documents\Programmieren\FP-Reader\fileReader.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

