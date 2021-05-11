unit Classe.Pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
  private
    FNome: String;
    FSalario: Currency;
    FFuncao: Currency;
    procedure setNome(const Value: String);
    procedure setSalario(const Value: Currency);
    procedure setFuncao(const Value: Currency);
  public
    property Nome: String read FNome write setNome;
    property Salario: Currency read FSalario write setSalario;
    property Funcao: Currency read FFuncao write setFuncao;
    function CalcuSalario : Currency; virtual;
  end;

implementation

procedure TPessoa.setNome(const Value: string);
begin
  if Value = '' then
    raise Exception.Create('Campo nome em branco.');
  FNome := Value;
end;

procedure TPessoa.setSalario(const Value: Currency);
begin
  if Value <= 0 then
    raise Exception.Create('Campo Sal�rio em branco.');
  FSalario := Value;
end;

procedure TPessoa.setFuncao(const Value: Currency);
begin
  if Value <= 0 then
    raise Exception.Create('Campo Fun��o em branco.');
  FFuncao := Value;
end;

function TPessoa.CalcuSalario : Currency;
begin
   Result :=  Salario
end;
end.
