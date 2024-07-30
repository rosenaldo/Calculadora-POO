unit UInterface.Calculadora;

interface

type
  IOperacoes = interface
    ['{1248B600-02DD-4A0A-AE6C-F1E6580E7ADB}']
    function Executar: string;
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
  end;

implementation

end.
