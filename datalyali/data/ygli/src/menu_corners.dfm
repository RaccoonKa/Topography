object Formmenucorners: TFormmenucorners
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1056#1032#1056#1110#1056#187#1057#8249
  ClientHeight = 489
  ClientWidth = 689
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDefault
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 157
    Top = 217
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 392
    Top = 216
    Width = 34
    Height = 15
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 554
    Top = 215
    Width = 34
    Height = 15
    Caption = 'Label3'
  end
  object ImageLogo: TPaintBox
    Left = 195
    Top = 44
    Width = 299
    Height = 268
    OnPaint = ImageLogoPaint
  end
  object LabelCredits: TLabel
    Left = 597
    Top = 416
    Width = 76
    Height = 17
    Alignment = taRightJustify
    Caption = 'LabelCredits'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGold
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
end
