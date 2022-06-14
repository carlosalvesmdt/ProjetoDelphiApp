program ProvaDelphiApp;

uses
  Vcl.Forms,
  untProvaDelphiApp in 'untProvaDelphiApp.pas' {menuTarefas},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3},
  untProcessoThread in 'untProcessoThread.pas',
  untFunctionTarefas1 in 'untFunctionTarefas1.pas',
  untFunctionTarefas2 in 'untFunctionTarefas2.pas',
  untFunctionTarefas3 in 'untFunctionTarefas3.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmenuTarefas, menuTarefas);
  Application.Run;
end.
