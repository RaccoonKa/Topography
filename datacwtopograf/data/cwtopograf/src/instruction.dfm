object FormInstruction: TFormInstruction
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormInstruction'
  ClientHeight = 670
  ClientWidth = 1073
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object ButtonBack: TSpeedButton
    Left = 400
    Top = 601
    Width = 300
    Height = 60
    Caption = #1053#1072#1079#1072#1076
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGold
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = ButtonBackClick
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 1073
    Height = 525
    Align = alTop
    Color = clBlack
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    OnEnter = RichEdit1Enter
    OnSelectionChange = RichEdit1SelectionChange
  end
end
