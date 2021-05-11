unit Classe.Administrativo;

interface

uses
  Classe.Pessoa, System.SysUtils;

type
  TAdministrativo = class(TPessoa)
  private
    FBonus: Currency;
    procedure setBonus(const Value: Currency);
  public
    property bonus: Currency read FBonus write setBonus;
    function CalcuSalario: Currency; overload;
  end;

implementation

function TAdministrativo.CalcuSalario: Currency;
begin
  Result := Salario + bonus;
end;

procedure TAdministrativo.setBonus(const Value: Currency);
begin
  if Value <= 0 then
    raise Exception.Create('Campo B�nus em branco.');

  FBonus := Value;

end;

end.
