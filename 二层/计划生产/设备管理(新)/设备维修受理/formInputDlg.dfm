object frmInputDlg: TfrmInputDlg
  Left = 192
  Top = 114
  Width = 356
  Height = 199
  Caption = 'frmInputDlg'
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Label1'
  end
  object btn_OK: TButton
    Left = 90
    Top = 133
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 0
    OnClick = btn_OKClick
  end
  object Button2: TButton
    Left = 186
    Top = 133
    Width = 75
    Height = 25
    Caption = #21462#28040
    ModalResult = 2
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 11
    Top = 29
    Width = 324
    Height = 97
    TabOrder = 2
    OnKeyPress = Memo1KeyPress
  end
end
