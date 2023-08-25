program AjudaCNC;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipalU in 'frmPrincipalU.pas' {Form1},
  frmCalculosAvancoRotacaoU in 'frmCalculosAvancoRotacaoU.pas' {frmCalculosAvancoRotacao},
  frmCalculosU in 'frmCalculosU.pas' {frmCalculosCNC},
  frmRosqueamentoU in 'frmRosqueamentoU.pas' {frmRosqueamento};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCalculosAvancoRotacao, frmCalculosAvancoRotacao);
  Application.CreateForm(TfrmCalculosCNC, frmCalculosCNC);
  Application.CreateForm(TfrmRosqueamento, frmRosqueamento);
  Application.Run;
end.
