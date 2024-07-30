unit UClasse.Dividir;

interface

uses UInterface.Calculadora,System.SysUtils;

type
  TDividir = class(TInterfacedObject, IOperacoes)
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



{ TDividir }

constructor TDividir.create;
begin

end;

destructor TDividir.destroy;
begin

  inherited;
end;

class function TDividir.New: IOperacoes;
begin
  Result := Self.create;
end;

function TDividir.Operacao(Num1, Num2: string): string;
begin
  Result := (Num1.ToDouble / Num2.ToDouble).ToString;
end;

function TDividir.Operacao(Num1, Num2: Double): Double;
begin
  if Num2 <= 0 then
    raise Exception.create('Valor não pode ser dividido por  0 ');

  Result := Num1 / Num2;
end;

end.
