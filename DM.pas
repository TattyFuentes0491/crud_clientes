unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  IBX.IBDatabase, IBX.IBCustomDataSet;

type
  TDataModuleFact = class(TDataModule)
    IBDatabase: TIBDatabase;
    IBDataSetCliente: TIBDataSet;
    IBDataSetProducto: TIBDataSet;
    IBDataSetCabezaFactura: TIBDataSet;
    IBDataSetDetalleFactura: TIBDataSet;
    DataSourceProducto: TDataSource;
    DataSourceCabezaFactura: TDataSource;
    DataSourceDetalleFactura: TDataSource;
    IBTransaction: TIBTransaction;
    IBDataSetClienteDIRECCION: TIBStringField;
    IBDataSetClienteNOMBRE_CLIENTE: TIBStringField;
    DataSourceCliente: TDataSource;
    IBDataSetProductoNOMBRE_PRODUCTO: TIBStringField;
    IBDataSetProductoVALOR: TFloatField;
    IBDataSetCabezaFacturaFECHA: TDateField;
    IBDataSetCabezaFacturaCLIENTE: TIntegerField;
    IBDataSetCabezaFacturaTOTAL: TFloatField;
    IBDataSetClienteCLIENTE: TIntegerField;
    IBDataSetProductoPRODUCTO: TIntegerField;
    IBDataSetCabezaFacturaNUMERO: TIntegerField;
    IBDataSetDetalleFacturaNUMERO: TIntegerField;
    IBDataSetDetalleFacturaPRODUCTO: TIntegerField;
    IBDataSetDetalleFacturaCANTIDAD: TIntegerField;
    IBDataSetDetalleFacturaVALOR: TFloatField;
    IBDataSetDetalleFacturaNUM_FACT: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleFact: TDataModuleFact;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
