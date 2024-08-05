unit UClasse.Calculadora;

interface

uses Controls,
  UInterface.Calculadora,
  UClasse.Helper,
  UClasse.Dividir,
  UClasse.Subtrair,
  UClasse.Soma,
  UClasse.Multiplicar,
  System.Generics.Collections;

type

  TCalculadora = class(TInterfacedObject, ICalculadora)
  private
    FLista: TList<Double>;
    // ESSE TLIST É UMA LISTA GENERICA QUE PERMITE TIPIFICAR OS VALORES QUE RECEBEM, SE NÃO FOR GENERICA NÃO TEM ACESSO A CERTO TIPOS DE DADOS
    // A LISATA GENERICA FOI CRIADA PARA NÃO FICAR INGESSADO PASSANDO APENAS DOI PARAMETROS, SENDO ASSIM SERÁ POSSIVEL PASSAR QUANTOS QUISER.
    function Soma: IOperacoes;
    function Subtrair: IOperacoes;
    function Dividir: IOperacoes;
    function Multiplicar: IOperacoes;

  public
    function Add(Value: string): ICalculadora; overload;
    function Add(Value: integer): ICalculadora; overload;
    function Add(Value: currency): ICalculadora; overload;

    constructor create;
    destructor destroy; override;
    class function New: ICalculadora;
  end;

implementation

uses
  System.SysUtils;

{ TCalculadora }

function TCalculadora.Add(Value: string): ICalculadora;
begin
  Result := Self;
  FLista.Add(Value.ToDouble);
end;

function TCalculadora.Add(Value: integer): ICalculadora;
begin
  Result := Self;
  FLista.Add(Value.ToDouble);
end;

function TCalculadora.Add(Value: currency): ICalculadora;
begin
  Result := Self;
  FLista.Add(Value);
end;

constructor TCalculadora.create;
begin
  FLista := TList<Double>.create;
end;

destructor TCalculadora.destroy;
begin
  FLista.Free;
  inherited;
end;

function TCalculadora.Dividir: IOperacoes;
begin
  Result := TDividir.New(FLista);
end;

function TCalculadora.Multiplicar: IOperacoes;
begin
  Result := TMultiplicar.New(FLista);
end;

class function TCalculadora.New: ICalculadora;
begin
  Result := Self.create;
end;

function TCalculadora.Soma: IOperacoes;
begin
  Result := TSomar.New(FLista);
end;

function TCalculadora.Subtrair: IOperacoes;
begin
  Result := TSubtrair.New(FLista);
end;

{ TCaptionHelper }

{ TCaptionHelper }

end.
