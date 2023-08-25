unit frmPrincipalU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Advertising;

type
  TForm1 = class(TForm)
    cabecalho: TToolBar;
    lbTitulo: TLabel;
    btnVoltar: TButton;
    lImagemCorpo: TLayout;
    lPropaganda: TLayout;
    lCorpo: TLayout;
    btnCalculos: TButton;
    btnApostilas: TButton;
    btnAprendizados: TButton;
    BannerAd1: TBannerAd;
    procedure btnCalculosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses
frmCalculosU;

procedure TForm1.btnCalculosClick(Sender: TObject);
begin
  frmCalculosCNC.show
end;

end.
