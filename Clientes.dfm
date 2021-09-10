object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 521
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 41
    Height = 13
    Caption = 'CLIENTE'
  end
  object Label2: TLabel
    Left = 364
    Top = 5
    Width = 56
    Height = 13
    Caption = 'PRODUCTO'
  end
  object Label3: TLabel
    Left = 10
    Top = 228
    Width = 92
    Height = 13
    Caption = 'CABEZA_FACTURA'
  end
  object Label4: TLabel
    Left = 358
    Top = 228
    Width = 92
    Height = 13
    Caption = 'DETALLE FACTURA'
  end
  object DBGridClte: TDBGrid
    Left = 2
    Top = 24
    Width = 356
    Height = 170
    DataSource = DataModuleFact.DataSourceCliente
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Caption = 'COD_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE_CLIENTE'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIRECCION'
        Visible = True
      end>
  end
  object DBNavigatorClte: TDBNavigator
    Left = 4
    Top = 199
    Width = 297
    Height = 25
    DataSource = DataModuleFact.DataSourceCliente
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 1
    OnClick = DBNavigatorClteClick
  end
  object DBGridPdto: TDBGrid
    Left = 358
    Top = 24
    Width = 350
    Height = 170
    DataSource = DataModuleFact.DataSourceProducto
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUCTO'
        Title.Caption = 'COD_PRODUCTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE_PRODUCTO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
  object DBGridCbaFact: TDBGrid
    Left = 8
    Top = 247
    Width = 350
    Height = 170
    DataSource = DataModuleFact.DataSourceCabezaFactura
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Caption = 'COD_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Visible = True
      end>
  end
  object DBNavigatorPdto: TDBNavigator
    Left = 358
    Top = 200
    Width = 300
    Height = 25
    DataSource = DataModuleFact.DataSourceProducto
    TabOrder = 4
    OnClick = DBNavigatorPdtoClick
  end
  object DBNavigatorCbaFact: TDBNavigator
    Left = 8
    Top = 423
    Width = 300
    Height = 25
    DataSource = DataModuleFact.DataSourceCabezaFactura
    TabOrder = 5
    OnClick = DBNavigatorCbaFactClick
  end
  object DBGridDetFact: TDBGrid
    Left = 358
    Top = 247
    Width = 350
    Height = 170
    DataSource = DataModuleFact.DataSourceDetalleFactura
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO'
        ReadOnly = False
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_FACT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CANTIDAD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
  object DBNavigatorDetFact: TDBNavigator
    Left = 364
    Top = 423
    Width = 300
    Height = 25
    DataSource = DataModuleFact.DataSourceDetalleFactura
    TabOrder = 7
    OnClick = DBNavigatorDetFactClick
  end
  object Button1: TButton
    Left = 269
    Top = 474
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 8
    OnClick = Button1Click
  end
  object ButtonLimpiar: TButton
    Left = 350
    Top = 474
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 9
    OnClick = ButtonLimpiarClick
  end
end
