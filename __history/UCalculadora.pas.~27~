unit UCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UClasse.Calculadora,
  UInterface.Calculadora;

type
  TFOR_PRINCIPAL = class(TForm)
    EDT_NUM01: TEdit;
    EDT_NUM02: TEdit;
    EDT_NUM03: TEdit;
    Label1: TLabel;
    BTN_SOMA: TButton;
    BTN_SUBTRAIR: TButton;
    BTN_DIVIDIR: TButton;
    BTN_MULTIPLICAR: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BTN_SOMAClick(Sender: TObject);
    procedure BTN_SUBTRAIRClick(Sender: TObject);
    procedure BTN_DIVIDIRClick(Sender: TObject);
    procedure BTN_MULTIPLICARClick(Sender: TObject);
  private
    FCalculadora: ICalculadora;
    procedure SetCalculadora(const Value: ICalculadora);
    procedure ExibeResultado(Value: string);
    { Private declarations }
  public
    property Calculadora: ICalculadora read FCalculadora write SetCalculadora;
    { Public declarations }
  end;

var
  FOR_PRINCIPAL: TFOR_PRINCIPAL;

implementation

{$R *.dfm}
{ TFOR_PRINCIPAL }

// EDT_NUM03.Text := FloatToStr(Calculadora.Operacao(StrToFloat(EDT_NUM01.Text), StrToFloat(EDT_NUM02.Text)));
{ TFOR_PRINCIPAL }

procedure TFOR_PRINCIPAL.BTN_DIVIDIRClick(Sender: TObject);
begin
  Calculadora.Add(EDT_NUM01.Text).Add(EDT_NUM02.Text).Dividir.Executar;
end;

procedure TFOR_PRINCIPAL.BTN_MULTIPLICARClick(Sender: TObject);
begin
  Calculadora.Add(EDT_NUM01.Text).Add(EDT_NUM02.Text).Multiplicar.Executar;
end;

procedure TFOR_PRINCIPAL.BTN_SOMAClick(Sender: TObject);
begin
  Calculadora.Add(EDT_NUM01.Text).Add(EDT_NUM02.Text).Soma.Executar;
end;

procedure TFOR_PRINCIPAL.BTN_SUBTRAIRClick(Sender: TObject);
begin
  Calculadora.Add(EDT_NUM01.Text).Add(EDT_NUM02.Text).Subtrair.Executar;
end;

procedure TFOR_PRINCIPAL.ExibeResultado(Value: string);
begin
  EDT_NUM03.Text := Value;
end;

procedure TFOR_PRINCIPAL.FormCreate(Sender: TObject);
begin
  Calculadora := TCalculadora.New.Display.Resultado(ExibeResultado).EndDisplay;
end;

procedure TFOR_PRINCIPAL.SetCalculadora(const Value: ICalculadora);
begin
  FCalculadora := Value;
end;

end.
