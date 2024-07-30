unit UClasse.Calculadora;

interface

uses Controls, UInterface.Calculadora, UClasse.Helper, UClasse.Dividir,
  UClasse.Subtrair, UClasse.Soma, UClasse.Multiplicar;

type

  TCalculadora = class(TInterfacedObject, ICalculadora)
  private
    function Soma: IOperacoes;
    function Subtrair: IOperacoes;
    function Dividir: IOperacoes;
    function Multiplicar: IOperacoes;
  public
    constructor create;
    destructor destroy; override;
    class function New: ICalculadora;
  end;

implementation

uses
  System.SysUtils;

{ TCalculadora }

constructor TCalculadora.create;
begin

end;

destructor TCalculadora.destroy;
begin

  inherited;
end;

function TCalculadora.Dividir: IOperacoes;
begin
  Result := TDividir.New;
end;

function TCalculadora.Multiplicar: IOperacoes;
begin
  Result := TMultiplicar.New;
end;

class function TCalculadora.New: ICalculadora;
begin
  Result := Self.create;
end;

function TCalculadora.Soma: IOperacoes;
begin
  Result := TSomar.New;
end;

function TCalculadora.Subtrair: IOperacoes;
begin
  Result := TSubtrair.New;
end;

{ TCaptionHelper }

{ TCaptionHelper }

end.
