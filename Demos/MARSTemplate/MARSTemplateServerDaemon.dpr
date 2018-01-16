program MARSTemplateServerDaemon;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Classes,
  SysUtils,
  {$IFDEF LINUX}
  MARS.Linux.Daemon in '..\..\Source\MARS.Linux.Daemon.pas',
  {$ENDIF}
  Server.Ignition in 'Server.Ignition.pas',
  Server.WebModule in 'Server.WebModule.pas' {ServerWebModule: TWebModule};

begin
  {$IFDEF LINUX}
  TMARSDaemon.Current.Name := 'MARSTemplateServerDaemon';
  TMARSDaemon.Current.Start;
  {$ENDIF}
end.
