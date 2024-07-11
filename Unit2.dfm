object dtmdl1: Tdtmdl1
  OldCreateOrder = False
  Left = 192
  Top = 140
  Height = 207
  Width = 307
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\LENOVO\OneDrive\Documents\semester 4 yhh\VISUAL 2\uts\l' +
      'ibmysql.dll'
    Left = 32
    Top = 24
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 72
    Top = 24
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 72
    Top = 80
  end
end
