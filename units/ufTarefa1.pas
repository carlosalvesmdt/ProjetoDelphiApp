unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uspQuery;

type
  TfTarefa1 = class(TForm)
    plSqlGerado: TPanel;
    lblSQLGerado: TLabel;
    mSqlGerado: TMemo;
    plColunas: TPanel;
    lblColunas: TLabel;
    mColunas: TMemo;
    plTabelas: TPanel;
    lblTabelas: TLabel;
    mTabelas: TMemo;
    plCondicoes: TPanel;
    lblCondicoes: TLabel;
    mCondicoes: TMemo;
    plGeraSQL: TPanel;
    btnGeraSQL: TButton;
    spQuery: TspQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnGeraSQLClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

uses untFunctionTarefas1;

procedure TfTarefa1.btnGeraSQLClick(Sender: TObject);
var ClassTarefas1 : TClassTarefas1;
begin
     mSqlGerado.Clear;
     spQuery.spCondicoes.Clear;
     spQuery.spColunas.Clear;
     spQuery.spTabelas.Clear;
     spQuery.spCondicoes.AddStrings(mCondicoes.Lines);
     spQuery.spColunas.AddStrings(mColunas.Lines);
     spQuery.spTabelas.AddStrings(mTabelas.Lines);
     ClassTarefas1 := TClassTarefas1.Create;
     try
        mSqlGerado.Text := ClassTarefas1.GerarSql(spQuery);
     finally
       FreeAndNil(ClassTarefas1);
     end;

end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     fTarefa1 := nil;
end;

procedure TfTarefa1.FormShow(Sender: TObject);
begin
     mColunas.SetFocus;
end;

end.
