object menuTarefas: TmenuTarefas
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenuTarefas
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenuTarefas: TMainMenu
    Left = 312
    Top = 152
    object MenuTarefas: TMenuItem
      Caption = 'Tarefas'
      object SubMenuTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = SubMenuTarefa1Click
      end
      object SubMenuTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = SubMenuTarefa2Click
      end
      object SubMenuTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = SubMenuTarefa3Click
      end
    end
  end
end
