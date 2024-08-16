unit UClasse.Soma;

interface

uses UInterface.Calculadora, System.SysUtils, UCauculadora.Operacoes,
  System.Generics.Collections;

type
  TSomar = class sealed(TOperacoes)
  private
    { private declarations }
  protected
    { protected declarations }
  public
    constructor create(var Value: TList<Double>);
    destructor destroy; override;
    class function New(var Value: TList<Double>): IOperacoes;
    function Executar: string; override;
  published
    { published declarations }
  end;

implementation

{ TSomar }
constructor TSomar.create;
begin
  FLista := Value;
end;

destructor TSomar.destroy;
begin

  inherited;
end;

function TSomar.Executar: string;
var
  I: integer;
begin
  Result := FLista[0].ToString;
  for I := 1 to pred(FLista.count) do
    Result := (Result.ToDouble + FLista[I]).ToString;
  DisplayTotal(Result);

  inherited
end;

class function TSomar.New(var Value: TList<Double>): IOperacoes;
begin
  Result := Self.create(Value);
end;

end.
