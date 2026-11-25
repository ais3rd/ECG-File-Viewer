object Form1: TForm1
  Left = 465
  Top = 103
  Caption = 'Form1'
  ClientHeight = 495
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 185
    Top = 312
    Width = 57
    Height = 15
    Caption = 'Amplitudo'
  end
  object Label2: TLabel
    Left = 185
    Top = 355
    Width = 50
    Height = 15
    Caption = 'Frekuensi'
  end
  object Chart1: TChart
    Left = 24
    Top = 32
    Width = 737
    Height = 250
    Legend.CheckBoxes = True
    Title.Text.Strings = (
      'TChart')
    Chart3DPercent = 1
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TFastLineSeries
      HoverElement = []
      LinePen.Color = 10708548
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TFastLineSeries
      HoverElement = []
      Active = False
      LinePen.Color = 3513587
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 552
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Cari Data'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 80
    Top = 304
    Width = 81
    Height = 177
    ItemHeight = 15
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 248
    Top = 309
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 248
    Top = 352
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object Button2: TButton
    Left = 552
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Baseline'
    TabOrder = 5
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Ctl3D = False
    Left = 480
    Top = 312
  end
end
