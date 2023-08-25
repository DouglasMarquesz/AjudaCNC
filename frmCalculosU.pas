unit frmCalculosU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TfrmCalculosCNC = class(TForm)
    Label2: TLabel;
    btnCalculosAvancoRotacao: TButton;
    cabecalho: TToolBar;
    lbTitulo: TLabel;
    Button3: TButton;
    btnRosqueamento: TButton;
    btnVoltar: TButton;
    procedure btnCalculosAvancoRotacaoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnRosqueamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculosCNC: TfrmCalculosCNC;

implementation

{$R *.fmx}

uses
frmCalculosAvancoRotacaoU,
frmRosqueamentoU;

procedure TfrmCalculosCNC.btnCalculosAvancoRotacaoClick(Sender: TObject);
begin
  frmCalculosAvancoRotacao.show;
end;

procedure TfrmCalculosCNC.btnRosqueamentoClick(Sender: TObject);
begin
  frmRosqueamento.Show
end;

procedure TfrmCalculosCNC.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
