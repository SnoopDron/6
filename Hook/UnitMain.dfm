object Form1: TForm1
  Left = 192
  Top = 124
  Width = 219
  Height = 170
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 88
    Width = 75
    Height = 25
    Caption = 'StartHook'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 88
    Width = 75
    Height = 25
    Caption = 'StopHook'
    TabOrder = 1
    OnClick = Button2Click
  end
  object edt1: TEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
end
