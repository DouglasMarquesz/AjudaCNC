unit frmCalculosAvancoRotacaoU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Layouts, FMX.ListBox;

type
  TfrmCalculosAvancoRotacao = class(TForm)
    lbSubTitulo: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    edtDiametro: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtRotacao: TEdit;
    btnCalcularVC: TButton;
    Label6: TLabel;
    edtVC: TEdit;
    Image1: TImage;
    cabecalho: TToolBar;
    lbTitulo: TLabel;
    btnVoltar: TButton;
    procedure btnCalcularVCClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculosAvancoRotacao: TfrmCalculosAvancoRotacao;

implementation

{$R *.fmx}

procedure TfrmCalculosAvancoRotacao.btnCalcularVCClick(Sender: TObject);
var
diametro: double;
rotacao: double;
vc: double;
resultado: double;

begin

//Inserir valor zero
if edtdiametro.Text	= '' then
begin
  edtdiametro.Text := '0';
end;
if edtRotacao.Text	= '' then
begin
  edtRotacao.Text := '0';
end;
if edtvc.Text	= '' then
begin
  edtvc.Text := '0';
end;

diametro := StrToFloat(edtdiametro.Text);
rotacao := strToFloat(edtRotacao.Text);
vc := strToFloat(edtvc.Text);

if (diametro <> 0) and (rotacao <> 0) and (vc <> 0) then
  begin
    showmessage('Deixe o campo que quer calcular vazio!');
    exit;
  end;

if (diametro <> 0) and (rotacao <> 0) then
  begin
    resultado := (3.14 * diametro * rotacao) / 1000;
    showmessage('O valor de (VC) Velocidade de Corte é de: '+FloatToStr(resultado));
    edtVc.Text := FormatFloat('0',resultado);
    exit;
  end;

if (vc <> 0) and (rotacao <> 0) then
  begin
    resultado := (vc * 1000)/(3.14 * rotacao);
    showmessage('O valor do (Ø) Diâmetro da peça é de: '+FloatToStr(resultado));
    edtDiametro.Text := FormatFloat('0.##',resultado);
    exit;
  end;

if (vc <> 0) and (diametro <> 0) then
  begin
    resultado := (vc * 1000)/(3.14 * diametro);
    showmessage('O valor de (RPM) Rotação é de: '+FormatFloat('0',resultado));
    edtRotacao.Text := FormatFloat('0',resultado);
    exit;
  end;




end;

procedure TfrmCalculosAvancoRotacao.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
