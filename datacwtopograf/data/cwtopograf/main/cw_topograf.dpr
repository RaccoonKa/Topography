program cw_topograf;

uses
  Vcl.Forms,
  instruction in '..\src\instruction.pas' {FormInstruction},
  theory in '..\src\theory.pas' {FormTheory},
  results in '..\src\results.pas' {FormResults},
  coords_100k in '..\src\coords_100k.pas' {Formcoords100k},
  coords_25k in '..\src\coords_25k.pas' {Formcoords25k},
  coords_50k in '..\src\coords_50k.pas' {Formcoords50k},
  main_cw in '..\src\main_cw.pas' {Formmaincw};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormmaincw, Formmaincw);
  Application.CreateForm(TFormInstruction, FormInstruction);
  Application.CreateForm(TFormTheory, FormTheory);
  Application.CreateForm(TFormResults, FormResults);
  Application.CreateForm(TFormcoords100k, Formcoords100k);
  Application.CreateForm(TFormcoords25k, Formcoords25k);
  Application.CreateForm(TFormcoords50k, Formcoords50k);
  Application.Run;
end.