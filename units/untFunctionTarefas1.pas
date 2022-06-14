unit untFunctionTarefas1;

interface
   Uses uspQuery,System.Classes, FireDac.Dapt ;
type
   TClassTarefas1 = class
   public

   Function GerarSql(pSpQuery : TspQuery) : String;
end;

implementation


function TClassTarefas1.GerarSql(pSpQuery : TspQuery) : String;
begin
     pSpQuery.GerarSQL;
     Result := pSpQuery.SQL;
end;

end.
