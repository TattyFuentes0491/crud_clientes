object DataModuleFact: TDataModuleFact
  OldCreateOrder = False
  Height = 343
  Width = 631
  object IBDatabase: TIBDatabase
    Connected = True
    DatabaseName = 
      'localhost:D:\Documents\Embarcadero\Studio\Projects\crud_clientes' +
      '\CLIENTES.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 64
    Top = 72
  end
  object IBDataSetCliente: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTES '
      'WHERE CLIENTE = :CLIENTE')
    InsertSQL.Strings = (
      'INSERT INTO CLIENTES (NOMBRE_CLIENTE, DIRECCION) '
      'VALUES (:NOMBRE_CLIENTE, :DIRECCION);')
    RefreshSQL.Strings = (
      'SELECT * FROM CLIENTES'
      'ORDER BY 1')
    SelectSQL.Strings = (
      'SELECT * FROM CLIENTES'
      'ORDER BY 1')
    ModifySQL.Strings = (
      'UPDATE CLIENTES'
      'SET NOMBRE_CLIENTE = :NOMBRE_CLIENTE,'
      '    DIRECCION = :DIRECCION '
      'WHERE (CLIENTE = :CLIENTE);')
    ParamCheck = True
    UniDirectional = False
    Left = 352
    Top = 32
    object IBDataSetClienteCLIENTE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CLIENTE'
      Origin = 'CLIENTES.CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey, pfHidden]
      ReadOnly = True
      Required = True
    end
    object IBDataSetClienteNOMBRE_CLIENTE: TIBStringField
      FieldName = 'NOMBRE_CLIENTE'
      Origin = 'CLIENTES.NOMBRE_CLIENTE'
      Size = 60
    end
    object IBDataSetClienteDIRECCION: TIBStringField
      FieldName = 'DIRECCION'
      Origin = 'CLIENTES.DIRECCION'
      Size = 40
    end
  end
  object IBDataSetProducto: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PRODUCTOS'
      'WHERE PRODUCTO = :PRODUCTO')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTOS (NOMBRE_PRODUCTO, VALOR) '
      'VALUES (:NOMBRE_PRODUCTO, :VALOR);')
    RefreshSQL.Strings = (
      'select * from PRODUCTOS '
      'order by 1')
    SelectSQL.Strings = (
      'select * from PRODUCTOS'
      'order by 1')
    ModifySQL.Strings = (
      'UPDATE PRODUCTOS'
      'SET NOMBRE_PRODUCTO = :NOMBRE_PRODUCTO,'
      '    VALOR = :VALOR '
      'WHERE (PRODUCTO = :PRODUCTO);')
    ParamCheck = True
    UniDirectional = False
    Left = 544
    Top = 24
    object IBDataSetProductoPRODUCTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PRODUCTO'
      Origin = 'PRODUCTOS.PRODUCTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object IBDataSetProductoNOMBRE_PRODUCTO: TIBStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Origin = 'PRODUCTOS.NOMBRE_PRODUCTO'
      Size = 60
    end
    object IBDataSetProductoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'PRODUCTOS.VALOR'
    end
  end
  object IBDataSetCabezaFactura: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CABEZA_FACTURA'
      'WHERE NUMERO = :NUMERO ')
    InsertSQL.Strings = (
      'INSERT INTO CABEZA_FACTURA (FECHA, CLIENTE, TOTAL) '
      'VALUES (:FECHA, :COD_CLIENTE, :TOTAL);')
    RefreshSQL.Strings = (
      'select * from CABEZA_FACTURA'
      'order by 1')
    SelectSQL.Strings = (
      'select * from CABEZA_FACTURA'
      'order by 1')
    ModifySQL.Strings = (
      'UPDATE CABEZA_FACTURA'
      'SET FECHA = :FECHA ,'
      '    CLIENTE = :CLIENTE,'
      '    TOTAL = :TOTAL '
      'WHERE (NUMERO = :NUMERO);')
    ParamCheck = True
    UniDirectional = False
    Left = 352
    Top = 208
    object IBDataSetCabezaFacturaNUMERO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NUMERO'
      Origin = 'CABEZA_FACTURA.NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object IBDataSetCabezaFacturaFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'CABEZA_FACTURA.FECHA'
    end
    object IBDataSetCabezaFacturaCLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CABEZA_FACTURA.CLIENTE'
      Required = True
    end
    object IBDataSetCabezaFacturaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'CABEZA_FACTURA.TOTAL'
    end
  end
  object IBDataSetDetalleFactura: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM DETALLE_FACTURA'
      'WHERE NUMERO = :NUMERO ')
    InsertSQL.Strings = (
      
        'INSERT INTO DETALLE_FACTURA (NUM_FACT, PRODUCTO, CANTIDAD, VALOR' +
        ') '
      'VALUES (:NUM_FACT, :COD_PRODUCTO, :CANTIDAD, :VALOR);')
    RefreshSQL.Strings = (
      'select * from DETALLE_FACTURA'
      'order by 1')
    SelectSQL.Strings = (
      'select * from DETALLE_FACTURA'
      'order by 1')
    ModifySQL.Strings = (
      'UPDATE DETALLE_FACTURA'
      'SET NUM_FACT = :NUM_FACT,'
      '    PRODUCTO = :PRODUCTO ,'
      '    CANTIDAD = :CANTIDAD ,'
      '    VALOR = :VALOR '
      'WHERE (NUMERO = :NUMERO );')
    ParamCheck = True
    UniDirectional = False
    Left = 544
    Top = 208
    object IBDataSetDetalleFacturaNUMERO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NUMERO'
      Origin = 'DETALLE_FACTURA.NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object IBDataSetDetalleFacturaNUM_FACT: TSmallintField
      FieldName = 'NUM_FACT'
      Origin = 'DETALLE_FACTURA.NUM_FACT'
    end
    object IBDataSetDetalleFacturaPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
      Origin = 'DETALLE_FACTURA.PRODUCTO'
    end
    object IBDataSetDetalleFacturaCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      Origin = 'DETALLE_FACTURA.CANTIDAD'
    end
    object IBDataSetDetalleFacturaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'DETALLE_FACTURA.VALOR'
    end
  end
  object DataSourceProducto: TDataSource
    DataSet = IBDataSetProducto
    Left = 544
    Top = 104
  end
  object DataSourceCabezaFactura: TDataSource
    DataSet = IBDataSetCabezaFactura
    Left = 352
    Top = 288
  end
  object DataSourceDetalleFactura: TDataSource
    DataSet = IBDataSetDetalleFactura
    Left = 544
    Top = 288
  end
  object IBTransaction: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase
    Left = 64
    Top = 184
  end
  object DataSourceCliente: TDataSource
    DataSet = IBDataSetCliente
    Left = 352
    Top = 104
  end
end
