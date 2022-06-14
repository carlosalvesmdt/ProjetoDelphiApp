unit untProvaDelphiApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TmenuTarefas = class(TForm)
    MainMenuTarefas: TMainMenu;
    MenuTarefas: TMenuItem;
    SubMenuTarefa1: TMenuItem;
    SubMenuTarefa2: TMenuItem;
    SubMenuTarefa3: TMenuItem;
    procedure SubMenuTarefa1Click(Sender: TObject);
    procedure SubMenuTarefa2Click(Sender: TObject);
    procedure SubMenuTarefa3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menuTarefas: TmenuTarefas;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;

procedure TmenuTarefas.SubMenuTarefa1Click(Sender: TObject);
begin
     fTarefa1 := TfTarefa1.Create(self);
     fTarefa1.show;
end;

procedure TmenuTarefas.SubMenuTarefa2Click(Sender: TObject);
begin
     fTarefa2 := TfTarefa2.Create(self);
     fTarefa2.show;
end;

procedure TmenuTarefas.SubMenuTarefa3Click(Sender: TObject);
begin
     fTarefa3 := TfTarefa3.Create(self);
     fTarefa3.show;
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
