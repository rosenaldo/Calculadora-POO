unit UCauculadora.Operacoes;

interface

uses UInterface.Calculadora, System.Generics.Collections, UCalculadora.Eventos;

type
  TOperacoes = class(TInterfacedObject, IOperacoes, IOperacoesDisplay)

  protected
    FLista: TList<Double>;
    FEventoDisplayTotal: TEventoDisplayTotal;
    procedure DisplayTotal(Value: string);
  public
    function Executar: string; virtual;
    function Display: IOperacoesDisplay;
    function Resultado(Value: TEventoDisplayTotal): IOperacoesDisplay;
    function EndDisplay: IOperacoes;
  end;

implementation

{ TOperacoes }

function TOperacoes.Display: IOperacoesDisplay;
begin
  Result := Self;
end;

procedure TOperacoes.DisplayTotal(Value: string);
begin
  if Assigned(FEventoDisplayTotal) then
    FEventoDisplayTotal(Value);
end;

function TOperacoes.EndDisplay: IOperacoes;
begin
  Result := Self;
end;

function TOperacoes.Executar: string;
begin
  FLista.clear;
end;

function TOperacoes.Resultado(Value: TEventoDisplayTotal): IOperacoesDisplay;
begin
  Result := Self;
  FEventoDisplayTotal := Value;
end;

end.
