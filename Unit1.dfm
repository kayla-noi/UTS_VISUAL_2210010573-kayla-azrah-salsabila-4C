object Form1: TForm1
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 112
    Top = 40
    Width = 53
    Height = 19
    Caption = 'NAMA '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 112
    Top = 80
    Width = 85
    Height = 19
    Caption = 'DESKRIPSI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 120
    Top = 344
    Width = 148
    Height = 19
    Caption = 'MASUKKAN NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 224
    Top = 40
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 224
    Top = 80
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 280
    Top = 344
    Width = 209
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 120
    Top = 120
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 120
    Width = 81
    Height = 33
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 120
    Width = 81
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 408
    Top = 120
    Width = 81
    Height = 33
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = Button4Click
  end
  object dbgrd1: TDBGrid
    Left = 120
    Top = 176
    Width = 369
    Height = 153
    DataSource = dtmdl1.ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deskripsi'
        Width = 200
        Visible = True
      end>
  end
end
