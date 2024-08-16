unit UCauculadora.Operacoes;

interface

uses UInterface.Calculadora, System.Generics.Collections;

type
  TOperacoes = class(TInterfacedObject, IOperacoes)

  protected
    FLista: TList<Double>;
  public
    function Executar: string; virtual;
  end;

implementation

{ TOperacoes }

function TOperacoes.Executar: string;
begin
  FLista.clear;
end;

end.
