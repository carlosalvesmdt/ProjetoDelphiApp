object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tarefa 1'
  ClientHeight = 342
  ClientWidth = 760
  Color = clBtnFace
  Constraints.MaxHeight = 381
  Constraints.MaxWidth = 776
  Constraints.MinHeight = 381
  Constraints.MinWidth = 776
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object plSqlGerado: TPanel
    Left = 0
    Top = 139
    Width = 760
    Height = 203
    Align = alBottom
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 4
    object lblSQLGerado: TLabel
      Left = 11
      Top = 11
      Width = 738
      Height = 13
      Align = alTop
      Caption = 'SQL Gerado'
      ExplicitWidth = 57
    end
    object mSqlGerado: TMemo
      Left = 11
      Top = 24
      Width = 738
      Height = 168
      Align = alClient
      ReadOnly = True
      TabOrder = 0
    end
  end
  object plColunas: TPanel
    Left = 0
    Top = 0
    Width = 188
    Height = 139
    Align = alLeft
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 0
    object lblColunas: TLabel
      Left = 11
      Top = 11
      Width = 166
      Height = 13
      Align = alTop
      Caption = 'Colunas'
      ExplicitWidth = 38
    end
    object mColunas: TMemo
      Left = 11
      Top = 24
      Width = 166
      Height = 104
      TabStop = False
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object plTabelas: TPanel
    Left = 376
    Top = 0
    Width = 188
    Height = 139
    Align = alLeft
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 2
    object lblTabelas: TLabel
      Left = 11
      Top = 11
      Width = 166
      Height = 13
      Align = alTop
      Caption = 'Tabelas'
      ExplicitWidth = 37
    end
    object mTabelas: TMemo
      Left = 11
      Top = 24
      Width = 166
      Height = 104
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object plCondicoes: TPanel
    Left = 188
    Top = 0
    Width = 188
    Height = 139
    Align = alLeft
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 1
    object lblCondicoes: TLabel
      Left = 11
      Top = 11
      Width = 166
      Height = 13
      Align = alTop
      Caption = 'Condi'#231#245'es'
      ExplicitWidth = 49
    end
    object mCondicoes: TMemo
      Left = 11
      Top = 24
      Width = 166
      Height = 104
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object plGeraSQL: TPanel
    Left = 564
    Top = 0
    Width = 196
    Height = 139
    Align = alClient
    TabOrder = 3
    object btnGeraSQL: TButton
      Left = 64
      Top = 58
      Width = 75
      Height = 25
      Caption = 'Gera SQL'
      TabOrder = 0
      OnClick = btnGeraSQLClick
    end
  end
  object spQuery: TspQuery
    SQL = ''
    Left = 376
    Top = 176
  end
end
