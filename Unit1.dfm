object Form1: TForm1
  Left = 310
  Top = 231
  Width = 1097
  Height = 499
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 192
    Width = 88
    Height = 13
    Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1084#1072#1089#1089#1080#1074
  end
  object lbl2: TLabel
    Left = 16
    Top = 288
    Width = 130
    Height = 13
    Caption = #1054#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1084#1072#1089#1089#1080#1074
  end
  object lbl3: TLabel
    Left = 16
    Top = 80
    Width = 134
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#1084#1072#1089#1089#1080#1074#1072
  end
  object lbl4: TLabel
    Left = 576
    Top = 128
    Width = 209
    Height = 13
    Caption = #1042#1088#1077#1084#1103', '#1079#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077' '#1085#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1074' '#1084#1089':'
  end
  object btn1: TButton
    Left = 8
    Top = 104
    Width = 97
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1072#1079#1084#1077#1088
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn4: TButton
    Left = 8
    Top = 144
    Width = 97
    Height = 25
    Caption = #1056#1072#1085#1076#1086#1084
    TabOrder = 1
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 120
    Top = 144
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = btn5Click
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 208
    Width = 1353
    Height = 57
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object edt1: TEdit
    Left = 152
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'edt1'
  end
  object rg1: TRadioGroup
    Left = 384
    Top = 64
    Width = 185
    Height = 105
    Caption = #1052#1077#1090#1086#1076#1099' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080
    Items.Strings = (
      #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1074#1089#1090#1072#1074#1082#1072#1084#1080
      #1052#1077#1090#1086#1076#1086#1084' '#1087#1091#1079#1099#1088#1100#1082#1072
      #1052#1077#1090#1086#1076#1086#1084' '#1087#1088#1103#1084#1086#1075#1086' '#1074#1099#1073#1086#1088#1072
      #1052#1077#1090#1086#1076#1086#1084' '#1083#1080#1085#1077#1081#1085#1086#1081' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080)
    TabOrder = 5
  end
  object StringGrid2: TStringGrid
    Left = 0
    Top = 304
    Width = 1353
    Height = 81
    RowCount = 1
    FixedRows = 0
    TabOrder = 6
  end
  object btn7: TButton
    Left = 120
    Top = 104
    Width = 75
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 7
    OnClick = btn7Click
  end
  object edt2: TEdit
    Left = 584
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'edt2'
  end
  object Button1: TButton
    Left = 208
    Top = 104
    Width = 161
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1105
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 144
    Width = 161
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1091#1095#1077#1085#1085#1099#1081' '#1084#1072#1089#1089#1080#1074
    TabOrder = 10
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 800
    Top = 40
    Width = 249
    Height = 129
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 11
  end
  object mm1: TMainMenu
    Left = 8
    object N1: TMenuItem
      Caption = #1052#1077#1085#1102
      object N3: TMenuItem
        Caption = #1040#1074#1090#1086#1088
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N4Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N2Click
    end
  end
end
