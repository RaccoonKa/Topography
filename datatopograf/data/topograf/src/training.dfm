object Formtraining: TFormtraining
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1054#1073#1091#1095#1077#1085#1080#1077
  ClientHeight = 542
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    994
    542)
  TextHeight = 13
  object Image1: TImage
    Left = 9
    Top = 7
    Width = 617
    Height = 522
    Stretch = True
  end
  object SpeedButton1: TSpeedButton
    Left = 264
    Top = 472
    Width = 40
    Height = 41
    OnClick = SpeedButton1Click
    OnMouseEnter = SpeedButton1MouseEnter
    OnMouseLeave = SpeedButton1MouseLeave
  end
  object SpeedButton2: TSpeedButton
    Left = 210
    Top = 472
    Width = 40
    Height = 41
    OnClick = SpeedButton2Click
    OnMouseEnter = SpeedButton2MouseEnter
    OnMouseLeave = SpeedButton2MouseLeave
  end
  object SpeedButton3: TSpeedButton
    Left = 300
    Top = 472
    Width = 39
    Height = 41
    OnClick = SpeedButton3Click
    OnMouseEnter = SpeedButton3MouseEnter
    OnMouseLeave = SpeedButton3MouseLeave
  end
  object SpeedButton4: TSpeedButton
    Left = 352
    Top = 472
    Width = 40
    Height = 41
    OnClick = SpeedButton4Click
    OnMouseEnter = SpeedButton4MouseEnter
    OnMouseLeave = SpeedButton4MouseLeave
  end
  object SpeedButton5: TSpeedButton
    Left = 436
    Top = 472
    Width = 40
    Height = 41
    Visible = False
    OnMouseEnter = SpeedButton5MouseEnter
    OnMouseLeave = SpeedButton5MouseLeave
  end
  object Label1: TLabel
    Left = 19
    Top = 477
    Width = 56
    Height = 30
    Caption = #1064#1072#1075':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -25
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ImageGeo: TImage
    Left = 24
    Top = 23
    Width = 590
    Height = 442
    Stretch = True
    Visible = False
  end
  object SpeedButtonGeoPrev: TSpeedButton
    Left = 272
    Top = 472
    Width = 40
    Height = 41
    Visible = False
    OnClick = SpeedButtonGeoPrevClick
    OnMouseEnter = SpeedButtonGeoPrevMouseEnter
    OnMouseLeave = SpeedButtonGeoPrevMouseLeave
  end
  object SpeedButtonGeoNext: TSpeedButton
    Left = 337
    Top = 472
    Width = 40
    Height = 41
    Visible = False
    OnClick = SpeedButtonGeoNextClick
    OnMouseEnter = SpeedButtonGeoNextMouseEnter
    OnMouseLeave = SpeedButtonGeoNextMouseLeave
  end
  object MediaPlayer1: TMediaPlayer
    Left = 120
    Top = -7
    Width = 253
    Height = 30
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 15
    Top = 33
    Width = 597
    Height = 425
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
  end
  object RichEdit1: TRichEdit
    Left = 640
    Top = 24
    Width = 336
    Height = 462
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object PanelMenu: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 542
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 3
    ExplicitWidth = 992
    ExplicitHeight = 534
    object LabelMenu: TLabel
      Left = 197
      Top = 150
      Width = 600
      Height = 50
      Alignment = taCenter
      AutoSize = False
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1073#1083#1072#1089#1090#1100' '#1080#1079#1091#1095#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnGeographic: TButton
      Left = 297
      Top = 250
      Width = 400
      Height = 60
      Caption = #1043#1077#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1080#1077' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnGeographicClick
    end
    object btnRectangular: TButton
      Left = 297
      Top = 340
      Width = 400
      Height = 60
      Caption = #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1099#1077' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnRectangularClick
    end
  end
  object TrackBarGeo: TTrackBar
    Left = 19
    Top = 430
    Width = 595
    Height = 32
    Max = 3
    PageSize = 1
    TabOrder = 4
    Visible = False
    OnChange = TrackBarGeoChange
  end
  object btnBack: TButton
    Left = 878
    Top = 492
    Width = 90
    Height = 35
    Anchors = [akRight, akBottom]
    Caption = #1053#1072#1079#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = btnBackClick
    ExplicitLeft = 876
    ExplicitTop = 484
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 4000
    OnTimer = Timer1Timer
    Left = 520
    Top = 447
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer2Timer
    Left = 519
    Top = 404
  end
end
