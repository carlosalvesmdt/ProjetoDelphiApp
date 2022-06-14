unit untFunctionTarefas2;

interface
uses Vcl.ComCtrls,untProcessoThread;

type
  TExecutarThread = class
  public
    class var fMiliSegundos: Integer;
    class var fpThread: TProgressBar;
    class procedure Executar;
  end;

   TClassTarefas2 = class
   public
    procedure ExecutarThread1(var pThread: TProgressBar; pMiliSegundos : Integer);
    procedure ExecutarThread2(var pThread: TProgressBar; pMiliSegundos : Integer);
end;

implementation

{ TClassTarefas2 }

class procedure TExecutarThread.Executar;
var ProcessoThread : TProcessoThread;
begin
  ProcessoThread := TProcessoThread.Create(fpThread,fMiliSegundos);
  ProcessoThread.Start;
end;

procedure TClassTarefas2.ExecutarThread1(var pThread: TProgressBar;
  pMiliSegundos: Integer);
begin
     TExecutarThread.fMiliSegundos := pMiliSegundos;
     TExecutarThread.fpThread := pThread;
     TExecutarThread.Executar;
end;

procedure TClassTarefas2.ExecutarThread2(var pThread: TProgressBar;
  pMiliSegundos: Integer);
var ProcessoThread : TProcessoThread;
begin
     TExecutarThread.fMiliSegundos := pMiliSegundos;
     TExecutarThread.fpThread := pThread;
     TExecutarThread.Executar;
end;

end.
