unit untProcessoThread;

interface

uses
  System.Classes,Vcl.ComCtrls, System.SysUtils;

type
  TProcessoThread = class(TThread)
  private
    { Private declarations }
    fProgressBar : TProgressBar;
    fTempo : integer;
    fSleep : integer;
    procedure Sincronizar;
  protected
    procedure Execute; override;
  public
    constructor Create(pProgress : TProgressBar; pSleep : Integer); reintroduce;
  end;

implementation

constructor TProcessoThread.Create(pProgress: TProgressBar; pSleep : Integer);
begin
     inherited Create(True);
     FreeOnTerminate := True;
     fProgressBar := pProgress;
     fSleep := pSleep;
end;

procedure TProcessoThread.Execute;
var
    I : Integer;
begin
    inherited;
    for I := 0 to 100 do
    begin
        Sleep(fSleep);
        fTempo := i;
        Synchronize(Self.Sincronizar);
    end;
end;
procedure TProcessoThread.Sincronizar;
begin
     if fSleep <= 0 then
        raise Exception.Create('Tempo informado deve ser maior que 0');
     fProgressBar.Position := fTempo;
end;

end.
