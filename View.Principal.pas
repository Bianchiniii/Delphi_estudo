unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Classe.Pessoa;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.
