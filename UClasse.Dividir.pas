unit UClasse.Dividir;

interface

uses UInterface.Calculadora, System.SysUtils, UCauculadora.Operacoes,
  System.Generics.Collections;

type
  TDividir = class sealed(TOperacoes)
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

{ TDividir }

constructor TDividir.create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TDividir.destroy;
begin

  inherited;
end;

function TDividir.Executar: string;
begin

  inherited
end;

class function TDividir.New(var Value: TList<Double>): IOperacoes;
begin
  Result := Self.create(Value);
end;

end.
