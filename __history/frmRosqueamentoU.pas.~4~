unit frmRosqueamentoU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Edit;

type
  TfrmRosqueamento = class(TForm)
    cabecalho: TToolBar;
    lbTitulo: TLabel;
    btnVoltar: TButton;
    lbSubTitulo: TLabel;
    lCorpo: TLayout;
    lCabecalhoCorpo: TLayout;
    rbMetrica: TRadioButton;
    rbPolegadas: TRadioButton;
    lDadosIniciais: TLayout;
    Label4: TLabel;
    edtValor: TEdit;
    btnCalcular: TButton;
    Label1: TLabel;
    edtQtdPassadas: TEdit;
    lSaidaDeDados: TLayout;
    lbPasse: TLabel;
    lbAlturaDoFilete: TLabel;
    lbDiametroFinal: TLabel;
    lbProfundidadePasse: TLabel;
    lbResultado: TLabel;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRosqueamento: TfrmRosqueamento;

implementation

{$R *.fmx}


//Calcular rosqueamento
procedure TfrmRosqueamento.btnCalcularClick(Sender: TObject);
var
passe : double;
diametroinicial : double;
diametrofinal : double;
profupasse : double;
qtdpassadas: double;
valorRosca : string;
passeInicial: double;
begin

//Tratamento de erros
edtValor.Text := StringReplace(edtValor.Text, '.', ',', [rfReplaceAll, rfIgnoreCase]);

//Rosca do tipo Métrica:
if rbMetrica.IsChecked = true	then
begin
  if (Pos('X',edtValor.Text) = 0) OR (Pos('M',edtValor.Text) = 0) then
  begin
    showmessage('Por favor, insira o valor no formato métrico, exemplo: "M25X2"');
    exit;
  end;

  //CorrigirValores
  valorRosca := edtValor.Text;
  passeInicial := StrToFloat((Copy (valorRosca, Pos ('X', valorRosca) + 1, Length (valorRosca))));
  qtdpassadas := StrToFloat(edtQtdPassadas.Text);
  diametroInicial := StrToFloat(Copy(Copy(valorRosca, Pos ('M', valorRosca) + 1, Length (valorRosca)), 0, Pos('X', Copy(valorRosca, Pos ('M', valorRosca) + 1, Length (valorRosca)))-1));

  //Calcular passe
  passe := (0.65 * passeInicial);
  //Calcular diametro final
  diametrofinal := diametroinicial - (passe *2);
  //Calcular profundidade do passe
  profupasse := (passe/(sqrt(qtdpassadas)));
  profuPasse := StrToFloat(FormatFloat('0.###',profupasse));


  lbPasse.Text := 'Passo (F): '+FloatToStr(passeInicial);
  lbDiametroFinal.Text  := 'Diâmetro Final (X): '+FloatToStr(diametrofinal);
  lbProfundidadePasse.Text  := 'Profundidade do Passe (Q) '+FloatToStr(profupasse);
  lbAlturaDoFilete.Text  := 'Altura do Filete (P) '+FloatToStr(passe);
  lbResultado.Text  := 'G76 X'+FloatToStr(diametrofinal)+' Z0 P'+FloatToStr(passe*1000)+' Q'+FloatToStr(profupasse*1000)+' F'+FloatToStr(passeInicial);
  lbresultado.Text  := StringReplace(lbResultado.Text	, ',', '.', [rfReplaceAll, rfIgnoreCase]);
  if diametrofinal <= 0 then
  begin
    showmessage('Impossivel de fazer esta rosca!');
  end;
End;



end;

procedure TfrmRosqueamento.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
