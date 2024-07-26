unit UClasse.Multiplicar;

interface

uses UInterface.Calculadora,System.SysUtils;

type
  TMultiplicar = class(TInterfacedObject, IOperacoes)
  private
    { private declarations }
  protected
    { protected declarations }
  public
    constructor create;
    destructor destroy; override;
    class function New: IOperacoes;
    function Operacao(Num1, Num2: Double): Double; overload;
    function Operacao(Num1, Num2: string): string; overload;
  published
    { published declarations }
  end;

implementation

{ TMultiplicar }

constructor TMultiplicar.create;
begin

end;

destructor TMultiplicar.destroy;
begin

  inherited;
end;

class function TMultiplicar.New: IOperacoes;
begin
  Result := Self.create;
end;

function TMultiplicar.Operacao(Num1, Num2: string): string;
begin
  Result := (Num1.ToDouble() * Num2.ToDouble()).ToString;
end;

function TMultiplicar.Operacao(Num1, Num2: Double): Double;
begin
  Result := Num1 * Num2;
end;

end.
