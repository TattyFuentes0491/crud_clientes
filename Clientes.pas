unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBGridClte: TDBGrid;
    DBNavigatorClte: TDBNavigator;
    DBGridPdto: TDBGrid;
    DBGridCbaFact: TDBGrid;
    DBNavigatorPdto: TDBNavigator;
    DBNavigatorCbaFact: TDBNavigator;
    DBGridDetFact: TDBGrid;
    DBNavigatorDetFact: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    ButtonLimpiar: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigatorClteClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigatorPdtoClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigatorCbaFactClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigatorDetFactClick(Sender: TObject; Button: TNavigateBtn);
    procedure ButtonLimpiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DM;

procedure TForm1.Button1Click(Sender: TObject);
begin
  DBGridClte.DataSource:= nil;
  DataModuleFact.IBDataSetCliente.Close;
  DBGridClte.DataSource:= DataModuleFact.DataSourceCliente;
  DataModuleFact.IBDataSetCliente.Open;

  DBGridPdto.DataSource:= nil;
  DataModuleFact.IBDataSetProducto.Close;
  DBGridPdto.DataSource:= DataModuleFact.DataSourceProducto;
  DataModuleFact.IBDataSetProducto.Open;

  DBGridCbaFact.DataSource:= nil;
  DataModuleFact.IBDataSetCabezaFactura.Close;
  DBGridCbaFact.DataSource:= DataModuleFact.DataSourceCabezaFactura;
  DataModuleFact.IBDataSetCabezaFactura.Open;

  DBGridDetFact.DataSource:= nil;
  DataModuleFact.IBDataSetDetalleFactura.Close;
  DBGridDetFact.DataSource:= DataModuleFact.DataSourceDetalleFactura;
  DataModuleFact.IBDataSetDetalleFactura.Open;

end;

procedure TForm1.ButtonLimpiarClick(Sender: TObject);
begin
  DataModuleFact.IBDataSetCliente.Close;
  DataModuleFact.IBDataSetProducto.Close;
  DataModuleFact.IBDataSetCabezaFactura.Close;
  DataModuleFact.IBDataSetDetalleFactura.Close;
end;

procedure TForm1.DBNavigatorCbaFactClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbRefresh then
  begin
    DataModuleFact.IBDataSetCabezaFactura.Close;
    DataModuleFact.IBDataSetCabezaFactura.Open;
  end;
end;

procedure TForm1.DBNavigatorClteClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbRefresh then
  begin
    DataModuleFact.IBDataSetCliente.Close;
    DataModuleFact.IBDataSetCliente.Open;
  end;
end;

procedure TForm1.DBNavigatorDetFactClick(Sender: TObject; Button: TNavigateBtn);
begin
    if Button = nbRefresh then
  begin
    DataModuleFact.IBDataSetDetalleFactura.Close;
    DataModuleFact.IBDataSetDetalleFactura.Open;
  end;
end;

procedure TForm1.DBNavigatorPdtoClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbRefresh then
  begin
    DataModuleFact.IBDataSetProducto.Close;
    DataModuleFact.IBDataSetProducto.Open;
  end;
end;

end.
