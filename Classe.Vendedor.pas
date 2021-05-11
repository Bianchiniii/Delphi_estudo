unit Classe.Vendedor;

interface

uses
  Classe.Pessoa, System.SysUtils;

type
  TVendedor = class(TPessoa)
  private
    FComissao: Currency;
    procedure setComissao(const value: Currency);
  public
    property comissao: Currency read FComissao write setComissao;
    function CalcuSalario: Currency; overload;
  end;

implementation

function TVendedor.CalcuSalario: Currency;
begin
  Result := Salario + comissao;
end;

procedure TVendedor.setComissao(const value: Currency);
begin
  if value <= 0 then
    raise Exception.Create('Campo Comiss�o em branco');

  FComissao := value;

end;
end.
