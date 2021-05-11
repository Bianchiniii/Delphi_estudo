unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Classe.Pessoa, Classe.Administrativo, Classe.Vendedor;

type
  TEscolheFuncao = (tpAdministrativo, tpVendedor, tpFuncionario);

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    edtNome: TEdit;
    edtSalario: TEdit;
    edtBonus: TEdit;
    bntCadastrar: TButton;
    btnCalcSalario: TButton;
    Button2: TButton;
    Button1: TButton;
    cbFuncao: TComboBox;
    memoResult: TMemo;
    procedure bntCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Funcionario: Array [1 .. 100] of TPessoa;
    qntFunc: Integer;
    procedure IncluirAdministrativo;
    procedure IncluirVendedor;
    procedure IncluirFuncionario;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.bntCadastrarClick(Sender: TObject);
begin
  try
    case TEscolheFuncao(cbFuncao.ItemIndex) of
      tpAdministrativo:
        begin;
          IncluirAdministrativo;
        end;

      tpVendedor:
        begin;
          IncluirVendedor;
        end;

      tpFuncionario:
        begin;
          IncluirFuncionario;
        end;
    end;
    Inc(qntFunc);

  except
    raise Exception.Create('Erro ao cadastrar funcionario.');
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  qntFunc := 0;
end;

procedure TfrmPrincipal.IncluirAdministrativo;
begin
  Funcionario[qntFunc] := TAdministrativo.Create;
  TAdministrativo(Funcionario[qntFunc]).Nome := edtNome.Text;
  TAdministrativo(Funcionario[qntFunc]).Salario := StrToCurr(edtSalario.Text);
  TAdministrativo(Funcionario[qntFunc]).bonus := StrToCurr(edtBonus.Text);
end;

procedure TfrmPrincipal.IncluirFuncionario;
begin
  Funcionario[qntFunc] := TPessoa.Create;
  Funcionario[qntFunc].Nome := edtNome.Text;
  Funcionario[qntFunc].Salario := StrToCurr(edtSalario.Text);
end;

procedure TfrmPrincipal.IncluirVendedor;
begin
  Funcionario[qntFunc] := TVendedor.Create;
  TVendedor(Funcionario[qntFunc]).Nome := edtNome.Text;
  TVendedor(Funcionario[qntFunc]).Salario := StrToCurr(edtSalario.Text);
  TVendedor(Funcionario[qntFunc]).comissao := StrToCurr(edtBonus.Text);
end;

end.
