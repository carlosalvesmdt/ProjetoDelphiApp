object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tarefa 3'
  ClientHeight = 369
  ClientWidth = 635
  Color = clBtnFace
  Constraints.MaxHeight = 408
  Constraints.MaxWidth = 651
  Constraints.MinHeight = 408
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblValoresPorProjeto: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 13
    Caption = 'Valores por projeto:'
  end
  object lblTotal: TLabel
    Left = 535
    Top = 263
    Width = 44
    Height = 13
    Caption = 'Total R$:'
  end
  object lblTotalDivisoes: TLabel
    Left = 535
    Top = 311
    Width = 85
    Height = 13
    Caption = 'Total divis'#245'es R$:'
  end
  object dbgProjetos: TDBGrid
    Left = 8
    Top = 27
    Width = 619
    Height = 230
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdProjeto'
        Title.Caption = 'Id Projeto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProjeto'
        Title.Caption = 'Nome Projeto'
        Width = 429
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 87
        Visible = True
      end>
  end
  object btnObterTotal: TBitBtn
    Left = 454
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 1
    OnClick = btnObterTotalClick
  end
  object btnObterTotalDivisoes: TBitBtn
    Left = 408
    Top = 329
    Width = 121
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 2
    OnClick = btnObterTotalDivisoesClick
  end
  object edtSomaTotalColValor: TEdit
    Left = 535
    Top = 282
    Width = 92
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object edtSomaTotalDivRegistro: TEdit
    Left = 535
    Top = 330
    Width = 92
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
end
