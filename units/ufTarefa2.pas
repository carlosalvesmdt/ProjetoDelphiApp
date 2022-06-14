unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ComCtrls, Vcl.Buttons, untFunctionTarefas2;

type
  TfTarefa2 = class(TForm)
    pbThread1: TProgressBar;
    pbThread2: TProgressBar;
    spnMiliSegundos1: TSpinEdit;
    spnMiliSegundos2: TSpinEdit;
    btnExecutar: TBitBtn;
    lblThread1: TLabel;
    Label1: TLabel;
    lblMiliSegundos2: TLabel;
    lblMiliSegundos1: TLabel;
    procedure btnExecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

uses untProcessoThread;

procedure TfTarefa2.btnExecutarClick(Sender: TObject);
var vClassTarefas2 : TClassTarefas2;
begin
     pbThread1.Position := 0;
     pbThread2.Position := 0;
     vClassTarefas2 := TClassTarefas2.Create;
     try
       vClassTarefas2.ExecutarThread1(pbThread1,spnMiliSegundos1.Value);
       vClassTarefas2.ExecutarThread2(pbThread2,spnMiliSegundos2.Value);
     finally
       FreeAndNil(vClassTarefas2);
     end;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     fTarefa2 := Nil;
end;

end.
