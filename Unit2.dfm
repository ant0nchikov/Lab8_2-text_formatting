object Form2: TForm2
  Left = 429
  Top = 145
  Width = 471
  Height = 473
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 265
    Height = 105
    AutoSize = False
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 32
    Top = 8
    Width = 201
    Height = 20
    Caption = #1042#1099#1074#1086#1076' '#1091#1089#1083#1086#1074#1080#1103' '#1079#1072#1076#1072#1095#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 248
    Width = 117
    Height = 20
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 240
    Top = 248
    Width = 175
    Height = 20
    Caption = #1042#1099#1074#1086#1076' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 16
    Top = 272
    Width = 201
    Height = 153
    MaxLength = 999
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 240
    Top = 272
    Width = 201
    Height = 153
    TabStop = False
    ReadOnly = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 192
    Width = 137
    Height = 33
    Caption = #1063#1090#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 8
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 192
    Width = 121
    Height = 33
    Caption = #1047#1072#1087#1080#1089#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 320
    Top = 192
    Width = 115
    Height = 33
    Caption = '&'#1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Kind = bkClose
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 32
    Width = 265
    Height = 24
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 5
    TabStop = False
    OnChange = ComboBox1Change
    Items.Strings = (
      #1047#1072#1076#1072#1095#1072' 1'
      #1047#1072#1076#1072#1095#1072' 2')
  end
  object GroupBox1: TGroupBox
    Left = 280
    Top = 32
    Width = 161
    Height = 137
    Caption = #1047#1072#1076#1072#1095#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object RadioButton1: TRadioButton
      Left = 24
      Top = 40
      Width = 105
      Height = 17
      Caption = #1047#1072#1076#1072#1085#1080#1077' 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 24
      Top = 64
      Width = 121
      Height = 41
      Caption = #1047#1072#1076#1072#1085#1080#1077' 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 192
    Top = 232
  end
  object SaveDialog1: TSaveDialog
    Left = 160
    Top = 232
  end
end
