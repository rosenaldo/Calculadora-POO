unit UInterface.Calculadora;

interface

type
  IOperacoes = interface
    ['{1248B600-02DD-4A0A-AE6C-F1E6580E7ADB}']
    function Operacao(Num1, Num2: Double): Double; overload;
    function Operacao(Num1, Num2: string): string; overload;
  end;

  ICalculadora = interface
    ['{16235576-443C-4873-BA70-8FB71377AE94}']
    function Soma: IOperacoes;
    function Subtrair: IOperacoes;
    function Dividir: IOperacoes;
    function Multiplicar: IOperacoes;
  end;

implementation

end.
