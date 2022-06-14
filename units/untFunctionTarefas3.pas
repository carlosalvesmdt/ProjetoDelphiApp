unit untFunctionTarefas3;

interface
uses Datasnap.DBClient, Data.DB, System.SysUtils, System.Math ;
  type
      TClassTarefas3 = class
      private
          procedure CreateDataSet;
      public
         fTotal, fTotalDiv : Currency;
         fClientDataSet: TClientDataSet;
         fDataSource: TDataSource;
         procedure GerarDados;
         Constructor Create;
         Destructor Destroy;
  end;
implementation

{ TClassTarefas3 }

constructor TClassTarefas3.Create;
begin
  inherited;
  fClientDataSet:= TClientDataSet.Create(nil);
  CreateDataSet;
  fDataSource:= TDataSource.Create(nil);
  fDataSource.DataSet := fClientDataSet;
end;

procedure TClassTarefas3.CreateDataSet;
begin
    fClientDataSet.FieldDefs.Clear;
    with fClientDataSet.FieldDefs.AddFieldDef do
    begin
      DataType := TFieldType.ftInteger;
      Name := 'IdProjeto';
    end;
    with fClientDataSet.FieldDefs.AddFieldDef do
    begin
      DataType := TFieldType.ftString;
      Name := 'NomeProjeto';
      Size := 50;
    end;
    with fClientDataSet.FieldDefs.AddFieldDef do
    begin
      DataType := TFieldType.ftCurrency;
      Name := 'Valor';
    end;
    fClientDataSet.CreateDataSet;
end;


destructor TClassTarefas3.Destroy;
begin
  fDataSource.Destroy;
  fClientDataSet.Close;
  fClientDataSet.Destroy;

  inherited;
end;

procedure TClassTarefas3.GerarDados;
var
  i : Integer;
  vLoop : Boolean;
  vDiv : Currency;
begin
     Randomize;
     fTotal := 0;
     fTotalDiv := 0;
     vLoop := true;
     vDiv := 0;
     for i := 1 to 10 do
     begin
          fClientDataSet.Append;
          fClientDataSet.FieldByName('IdProjeto').Value := i;
          fClientDataSet.FieldByName('NomeProjeto').AsString := 'Projeto '+InttoStr(Random(100));
          fClientDataSet.FieldByName('Valor').Value := i*10;
          fClientDataSet.Post;
          fTotal := fTotal+fClientDataSet.FieldByName('Valor').Value;
          if vLoop then
          begin
               vLoop := false;
               vDiv := fClientDataSet.FieldByName('Valor').Value;
          end
          else
          begin
               fTotalDiv := fTotalDiv + (fClientDataSet.FieldByName('Valor').Value/vDiv);
               vDiv := fClientDataSet.FieldByName('Valor').Value;
          end;
     end;
     fTotalDiv := RoundTo(fTotalDiv,-2);
end;

end.
