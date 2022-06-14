unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,untFunctionTarefas3;

type
  TfTarefa3 = class(TForm)
    dbgProjetos: TDBGrid;
    lblValoresPorProjeto: TLabel;
    btnObterTotal: TBitBtn;
    btnObterTotalDivisoes: TBitBtn;
    edtSomaTotalColValor: TEdit;
    edtSomaTotalDivRegistro: TEdit;
    lblTotal: TLabel;
    lblTotalDivisoes: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
    procedure btnObterTotalDivisoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fClassTarefas3 : TClassTarefas3;
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.btnObterTotalClick(Sender: TObject);
begin
     edtSomaTotalColValor.Text := FormatFloat('##,###.00',fClassTarefas3.fTotal)
end;

procedure TfTarefa3.btnObterTotalDivisoesClick(Sender: TObject);
begin
     edtSomaTotalDivRegistro.Text := FormatFloat('###.##',fClassTarefas3.fTotalDiv)
end;


procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     fClassTarefas3.destroy;
     Action := caFree;
     fClassTarefas3 := Nil;
     fTarefa3 := Nil;
end;

procedure TfTarefa3.FormShow(Sender: TObject);
begin
     fClassTarefas3 := TClassTarefas3.Create;
     fClassTarefas3.GerarDados;
     dbgProjetos.DataSource := fClassTarefas3.fDataSource;
end;

end.
