unit UInterface.Calculadora;

interface

uses UCalculadora.Eventos;

type
  ICalculadora = interface;
  IOperacoesDisplay = interface;


  IOperacoes = interface
    ['{1248B600-02DD-4A0A-AE6C-F1E6580E7ADB}']
    function Executar: string;
    function Display: IOperacoesDisplay;

  end;

  IOperacoesDisplay = interface
    ['{88F84599-9ED7-4B6B-8339-CF0ABD1000CC}']
    function Resultado(Value: TEventoDisplayTotal): IOperacoesDisplay;
    function EndDisplay: IOperacoes;
  end;

  ICalculadoraDisplay = interface
    ['{EF61F408-348B-47C0-8CD5-47F3E368BDAC}']
    function Resultado(Value: TEventoDisplayTotal): ICalculadoraDisplay;
    function EndDisplay: ICalculadora;

  end;

  ICalculadora = interface
    ['{16235576-443C-4873-BA70-8FB71377AE94}']
    function Add(Value: string): ICalculadora; overload;
    function Add(Value: integer): ICalculadora; overload;
    function Add(Value: currency): ICalculadora; overload;
    function Soma: IOperacoes;
    function Subtrair: IOperacoes;
    function Dividir: IOperacoes;
    function Multiplicar: IOperacoes;
    function Display: ICalculadoraDisplay;
  end;

implementation

end.
