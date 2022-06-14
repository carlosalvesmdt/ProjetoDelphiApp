object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tarefa 2'
  ClientHeight = 103
  ClientWidth = 635
  Color = clBtnFace
  Constraints.MaxHeight = 142
  Constraints.MaxWidth = 651
  Constraints.MinHeight = 142
  Constraints.MinWidth = 651
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblThread1: TLabel
    Left = 8
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Thread 1'
  end
  object Label1: TLabel
    Left = 8
    Top = 45
    Width = 43
    Height = 13
    Caption = 'Thread 2'
  end
  object lblMiliSegundos2: TLabel
    Left = 439
    Top = 45
    Width = 43
    Height = 13
    Caption = 'Mili. Seg.'
  end
  object lblMiliSegundos1: TLabel
    Left = 439
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Mili. Seg.'
  end
  object pbThread1: TProgressBar
    Left = 8
    Top = 24
    Width = 425
    Height = 17
    TabOrder = 0
  end
  object pbThread2: TProgressBar
    Left = 8
    Top = 64
    Width = 425
    Height = 17
    TabOrder = 1
  end
  object spnMiliSegundos1: TSpinEdit
    Left = 439
    Top = 21
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object spnMiliSegundos2: TSpinEdit
    Left = 439
    Top = 59
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object btnExecutar: TBitBtn
    Left = 504
    Top = 35
    Width = 113
    Height = 25
    Caption = 'Executar'
    TabOrder = 4
    OnClick = btnExecutarClick
  end
end
