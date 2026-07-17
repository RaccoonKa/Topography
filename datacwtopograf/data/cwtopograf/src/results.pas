unit results;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormResults = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    LabelTheoryTitle: TLabel;
    LabelTheoryScore: TLabel;
    LabelTheoryGrade: TLabel;

    LabelPracticeTitle: TLabel;
    LabelPracticeCoordsTitle: TLabel;
    LabelPracticeCoordsResult: TLabel;
    LabelRectTitle: TLabel;
    LabelRectResult: TLabel;
    LabelPracticeCornersTitle: TLabel;
    LabelPracticeCornersResult: TLabel;
  public
  end;

var
  FormResults: TFormResults;

  PracticeCoordsDone: Boolean = False;
  PracticeCoordsResultStr: string = '';

  PracticeRectDone: Boolean = False;
  PracticeRectResultStr: string = '';

  PracticeCornersDone: Boolean = False;
  PracticeCornersResultStr: string = '';

implementation

{$R *.dfm}

uses theory;

procedure TFormResults.FormCreate(Sender: TObject);
begin
  Self.Color := clBlack;
  Self.KeyPreview := True;

  LabelTheoryTitle := TLabel.Create(Self);
  LabelTheoryTitle.Parent := Self;
  LabelTheoryTitle.Caption := 'РЕЗУЛЬТАТЫ ТЕОРИИ';
  LabelTheoryTitle.Font.Name := 'Segoe UI';
  LabelTheoryTitle.Font.Size := 24;
  LabelTheoryTitle.Font.Color := $00D7FF;
  LabelTheoryTitle.Font.Style := [fsBold];

  LabelTheoryScore := TLabel.Create(Self);
  LabelTheoryScore.Parent := Self;
  LabelTheoryScore.Font.Name := 'Segoe UI';
  LabelTheoryScore.Font.Size := 16;
  LabelTheoryScore.Font.Color := clWhite;

  LabelTheoryGrade := TLabel.Create(Self);
  LabelTheoryGrade.Parent := Self;
  LabelTheoryGrade.Font.Name := 'Segoe UI';
  LabelTheoryGrade.Font.Size := 16;
  LabelTheoryGrade.Font.Color := clWhite;

  LabelPracticeTitle := TLabel.Create(Self);
  LabelPracticeTitle.Parent := Self;
  LabelPracticeTitle.Caption := 'РЕЗУЛЬТАТЫ ПРАКТИКИ';
  LabelPracticeTitle.Font.Name := 'Segoe UI';
  LabelPracticeTitle.Font.Size := 24;
  LabelPracticeTitle.Font.Color := $00D7FF;
  LabelPracticeTitle.Font.Style := [fsBold];

  LabelPracticeCoordsTitle := TLabel.Create(Self);
  LabelPracticeCoordsTitle.Parent := Self;
  LabelPracticeCoordsTitle.Caption := 'Определение географических координат:';
  LabelPracticeCoordsTitle.Font.Name := 'Segoe UI';
  LabelPracticeCoordsTitle.Font.Size := 16;
  LabelPracticeCoordsTitle.Font.Color := $00D7FF;

  LabelPracticeCoordsResult := TLabel.Create(Self);
  LabelPracticeCoordsResult.Parent := Self;
  LabelPracticeCoordsResult.Font.Name := 'Segoe UI';
  LabelPracticeCoordsResult.Font.Size := 14;
  LabelPracticeCoordsResult.Font.Color := clWhite;

  LabelRectTitle := TLabel.Create(Self);
  LabelRectTitle.Parent := Self;
  LabelRectTitle.Caption := 'Определение прямоугольных координат:';
  LabelRectTitle.Font.Name := 'Segoe UI';
  LabelRectTitle.Font.Size := 16;
  LabelRectTitle.Font.Color := $00D7FF;

  LabelRectResult := TLabel.Create(Self);
  LabelRectResult.Parent := Self;
  LabelRectResult.Font.Name := 'Segoe UI';
  LabelRectResult.Font.Size := 14;
  LabelRectResult.Font.Color := clWhite;

  LabelPracticeCornersTitle := TLabel.Create(Self);
  LabelPracticeCornersTitle.Parent := Self;
  LabelPracticeCornersTitle.Caption := 'Определение азимутов и углов:';
  LabelPracticeCornersTitle.Font.Name := 'Segoe UI';
  LabelPracticeCornersTitle.Font.Size := 16;
  LabelPracticeCornersTitle.Font.Color := $00D7FF;

  LabelPracticeCornersResult := TLabel.Create(Self);
  LabelPracticeCornersResult.Parent := Self;
  LabelPracticeCornersResult.Font.Name := 'Segoe UI';
  LabelPracticeCornersResult.Font.Size := 14;
  LabelPracticeCornersResult.Font.Color := clWhite;
end;

procedure TFormResults.FormResize(Sender: TObject);
var
  CenterX, StartY: Integer;
begin
  CenterX := Self.ClientWidth div 2;
  StartY := (Self.ClientHeight div 2) - 400;

  LabelTheoryTitle.Left := CenterX - (LabelTheoryTitle.Width div 2);
  LabelTheoryTitle.Top := StartY;

  LabelTheoryScore.Left := CenterX - (LabelTheoryScore.Width div 2);
  LabelTheoryScore.Top := LabelTheoryTitle.Top + 80;

  LabelTheoryGrade.Left := CenterX - (LabelTheoryGrade.Width div 2);
  LabelTheoryGrade.Top := LabelTheoryScore.Top + 40;

  LabelPracticeTitle.Left := CenterX - (LabelPracticeTitle.Width div 2);
  LabelPracticeTitle.Top := LabelTheoryGrade.Top + 150;

  LabelPracticeCoordsTitle.Left := CenterX - (LabelPracticeCoordsTitle.Width div 2);
  LabelPracticeCoordsTitle.Top := LabelPracticeTitle.Top + 80;

  LabelPracticeCoordsResult.Left := CenterX - (LabelPracticeCoordsResult.Width div 2);
  LabelPracticeCoordsResult.Top := LabelPracticeCoordsTitle.Top + 50;

  LabelRectTitle.Left := CenterX - (LabelRectTitle.Width div 2);
  LabelRectTitle.Top := LabelPracticeCoordsResult.Top + 70;

  LabelRectResult.Left := CenterX - (LabelRectResult.Width div 2);
  LabelRectResult.Top := LabelRectTitle.Top + 50;

  LabelPracticeCornersTitle.Left := CenterX - (LabelPracticeCornersTitle.Width div 2);
  LabelPracticeCornersTitle.Top := LabelRectResult.Top + 80;

  LabelPracticeCornersResult.Left := CenterX - (LabelPracticeCornersResult.Width div 2);
  LabelPracticeCornersResult.Top := LabelPracticeCornersTitle.Top + 50;
end;

procedure TFormResults.FormShow(Sender: TObject);
var
  GradeStr: string;
begin
  if TheoryDone then
  begin
    LabelTheoryScore.Caption := 'Итог: ' + IntToStr(TheoryScore) + ' / 24 верных ответов';
    case TheoryScore of
      21..24: GradeStr := '5 (Отлично)';
      17..20: GradeStr := '4 (Хорошо)';
      13..16:  GradeStr := '3 (Удовлетворительно)';
      else    GradeStr := '2 (Неудовлетворительно)';
    end;
    LabelTheoryGrade.Caption := 'Оценка: ' + GradeStr;
    if TheoryScore >= 17 then LabelTheoryGrade.Font.Color := clLime
    else if TheoryScore >= 12 then LabelTheoryGrade.Font.Color := clYellow
    else LabelTheoryGrade.Font.Color := $004040FF;
  end
  else
  begin
    LabelTheoryScore.Caption := 'Тест ещё не пройден';
    LabelTheoryScore.Font.Color := clGray;
    LabelTheoryGrade.Caption := '';
  end;

  if PracticeCoordsDone then
    LabelPracticeCoordsResult.Caption := PracticeCoordsResultStr
  else
    LabelPracticeCoordsResult.Caption := 'Задание не выполнено';

  if PracticeRectDone then
    LabelRectResult.Caption := PracticeRectResultStr
  else
    LabelRectResult.Caption := 'Задание не выполнено';

  if PracticeCornersDone then
    LabelPracticeCornersResult.Caption := PracticeCornersResultStr
  else
    LabelPracticeCornersResult.Caption := 'Задание не выполнено';

  FormResize(Self);
end;

procedure TFormResults.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (ssShift in Shift) and (Key = Ord('X')) then
    Close;
end;

end.
