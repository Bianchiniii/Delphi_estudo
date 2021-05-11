program OOP_Projeto;

uses
  Vcl.Forms,
  View.Principal in 'View.Principal.pas' {frmPrincipal},
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Classe.Vendedor in 'Classe.Vendedor.pas',
  Classe.Administrativo in 'Classe.Administrativo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
