program Topograf;

uses
  Forms,
  menu in '..\src\menu.pas' {Formmenu},
  about_programm in '..\src\about_programm.pas' {Formprogramm},
  training in '..\src\training.pas' {Formtraining},
  coords_25k in '..\src\coords_25k.pas' {Formcoords25k},
  coords_100k in '..\src\coords_100k.pas' {Formcoords100k},
  coords_50k in '..\src\coords_50k.pas' {Formcoords50k};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormmenu, Formmenu);
  Application.CreateForm(TFormprogramm, Formprogramm);
  Application.CreateForm(TFormtraining, Formtraining);
  Application.CreateForm(TFormcoords25k, Formcoords25k);
  Application.CreateForm(TFormcoords100k, Formcoords100k);
  Application.CreateForm(TFormcoords50k, Formcoords50k);
  Formtraining.Visible := False;
  Application.Run;
end.
