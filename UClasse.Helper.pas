unit UClasse.Helper;

interface

uses Controls, System.SysUtils;

type
  TCaptionHelper = record helper for TCaption
    function ToFloat: Double;
  end;

  TStrHelp = record helper for
    String
    function ToCurrency: Currency;
  end;

implementation

function TCaptionHelper.ToFloat: Double;
begin
  Result := StrToFloat(Self);
end;

{ TStrHelp }

function TStrHelp.ToCurrency: Currency;
begin
  Result := StrToFloat(Self);
end;

end.
