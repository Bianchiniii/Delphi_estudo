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
    ListBox1: TListBox;
    procedure bntCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbFuncaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Funcionario: Array [1 .. 100] of TPessoa;
    qntFunc: Integer;
    procedure IncluirAdministrativo;
    procedure IncluirVendedor;
    procedure IncluirFuncionario;
    procedure VerificaCampos;
    procedure LimpaCampo;
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

procedure TfrmPrincipal.cbFuncaoChange(Sender: TObject);
begin
  if (cbFuncao.ItemIndex = 2) then
  begin;
    edtBonus.Enabled := false;
    edtBonus.Text := '';
  end;
  // else nao funciono n sei pq
  if cbFuncao.ItemIndex <> 2 then
  begin;
    edtBonus.Enabled := true;
  end;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  qntFunc := 0;
  cbFuncao.ItemIndex := 0;
end;

procedure TfrmPrincipal.IncluirAdministrativo;
begin
  VerificaCampos;
  Funcionario[qntFunc] := TAdministrativo.Create;
  TAdministrativo(Funcionario[qntFunc]).Nome := edtNome.Text;
  TAdministrativo(Funcionario[qntFunc]).Salario := StrToCurr(edtSalario.Text);
  TAdministrativo(Funcionario[qntFunc]).bonus := StrToCurr(edtBonus.Text);
  ShowMessage('Cadastrado com sucesso.');
  LimpaCampo;
  Funcionario[qntFunc].free;
end;

procedure TfrmPrincipal.IncluirFuncionario;
begin
  VerificaCampos;
  Funcionario[qntFunc] := TPessoa.Create;
  Funcionario[qntFunc].Nome := edtNome.Text;
  Funcionario[qntFunc].Salario := StrToCurr(edtSalario.Text);
  ShowMessage('Cadastrado com sucesso.');
  LimpaCampo;
  Funcionario[qntFunc].free;
end;

procedure TfrmPrincipal.IncluirVendedor;
begin
  VerificaCampos;
  Funcionario[qntFunc] := TVendedor.Create;
  TVendedor(Funcionario[qntFunc]).Nome := edtNome.Text;
  TVendedor(Funcionario[qntFunc]).Salario := StrToCurr(edtSalario.Text);
  TVendedor(Funcionario[qntFunc]).comissao := StrToCurr(edtBonus.Text);

  // popular memo
  memoResult.Lines.Add('Nome: ' + TVendedor(Funcionario[qntFunc]).Nome +
    ', Salário: ' + currToStr(TVendedor(Funcionario[qntFunc]).Salario) +
    ', Comissão: ' + currToStr(TVendedor(Funcionario[qntFunc]).comissao));

//    ListBox1.Items.Add(edtNome.text);
//  memoResult.Lines.add('Nome: ' + TVendedor(Funcionario[qntFunc]).Nome +
//    'Salário: ' + currToStr(TVendedor(Funcionario[qntFunc]).Salario) +
//    'Comissão: ' + currToStr(TVendedor(Funcionario[qntFunc]).comissao));
  ShowMessage('Cadastrado com sucesso.');
  LimpaCampo;
  Funcionario[qntFunc].free;
end;

procedure TfrmPrincipal.LimpaCampo;
begin
  edtNome.Text := '';
  edtSalario.Text := '';
  edtBonus.Text := '';
end;

procedure TfrmPrincipal.VerificaCampos;
begin
  if edtNome.Text = '' then
    raise Exception.Create('Nome não preenchido.');

  if edtSalario.Text = '' then
    raise Exception.Create('Salário não preenchido.');

  if (cbFuncao.ItemIndex <> 2) and (edtBonus.Text = '') then
    raise Exception.Create('Campo bônus em branco.');
end;

end.
