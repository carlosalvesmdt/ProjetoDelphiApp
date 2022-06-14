unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)
  private
    { Private declarations }
    pCondicoes: TStringList;
    pTabelas: TStringList;
    pColunas: TStringList;
    pSql: String;

    procedure SetCondicoes(List : TStringList);
    procedure SetColunas(List : TStringList);
    procedure SetTabelas(List : TStringList);
    procedure SetSql(value : string);
    procedure GerarInstrucaoSql;
    procedure LimparInstrucoes;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property SQL: String read pSql write SetSQL;
    property spCondicoes: TStringList read pCondicoes write SetCondicoes;
    property spColunas: TStringList read pColunas write SetColunas;
    property spTabelas: TStringList read pTabelas write SetTabelas;
    procedure GerarSQL;
    constructor Create(AOwner:TComponent);override;
    destructor Destroy;override;
  end;


implementation

{ TspQuery }

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited;
  pCondicoes := TStringList.Create;
  pTabelas := TStringList.Create;
  pColunas := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin
  FreeandNil(pCondicoes);
  FreeAndNil(pTabelas);
  FreeAndNil(pColunas);
  inherited;
end;


procedure TspQuery.GerarInstrucaoSql;
var
   temp : TStringList;
   i : integer;

begin
  if (pTabelas.Count = 0) or (trim(pTabelas[0]) = '' ) then
  begin
    raise Exception.Create('Voc� deve informar uma tabela');
  end;

  if pTabelas.Count > 1 then
  begin
    raise Exception.Create('Aten��o! S� � permitido utilizar uma Tabela');
  end;
  try
     temp := TStringList.Create;
     temp.Add('SELECT ');
     temp.LineBreak := '';
     if (pColunas.Count = 0) or (trim(pColunas[0]) = '' ) then
        temp.Add(' * ')
     else
         for i := 0 to pColunas.Count-1 do
            if (pColunas.Count>1) and (i<>pColunas.Count-1) then
              temp.Add(UpperCase(pColunas[i])+',')
            else temp.Add(UpperCase(pColunas[i]));

     temp.Add(' FROM '+UpperCase(pTabelas[0]));

     if (pCondicoes.Count > 0) and (trim(pCondicoes[0]) <> '' ) then
     Begin
          temp.Add(' WHERE ');
          for i := 0 to pCondicoes.Count-1 do
          if (pCondicoes.Count>1) and (i<>pCondicoes.Count-1) then
              temp.Add(UpperCase(pCondicoes[i])+' AND ')
          else temp.Add(UpperCase(pCondicoes[i]));
     End;
     pSql := temp.Text;
  finally
     FreeAndNil(temp);
  end;

end;

procedure TspQuery.GerarSQL;
begin
     GerarInstrucaoSql;
     LimparInstrucoes;
end;

procedure TspQuery.LimparInstrucoes;
begin
     spColunas.Clear;
     spCondicoes.Clear;
     spTabelas.Clear;
end;

procedure TspQuery.SetColunas(List: TStringList);
begin
     pColunas := List;
end;

procedure TspQuery.SetCondicoes(List: TStringList);
begin
     pCondicoes := List;
end;

procedure TspQuery.SetSql(value: string);
begin
     pSql := value;
end;

procedure TspQuery.SetTabelas(List: TStringList);
begin
      pTabelas := List;
end;

end.
