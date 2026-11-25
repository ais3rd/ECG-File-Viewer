unit Cekdataecg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.Series;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    ListBox1: TListBox;
    Series1: TFastLineSeries;
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Series2: TFastLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

end;
var
  Form1: TForm1;
  file1 : Textfile;
  data, ecgdata: array[0..100000] of Extended;
  n : Integer ;
  const
  fs=100;
implementation
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
i, j: Integer;
begin
series1.Clear; listbox1.Clear;
  OpenDialog1.Title := 'Pilih File Teks';
  OpenDialog1.Filter := 'Teks (.txt)|.txt|Semua File (.)|.';
  OpenDialog1.FilterIndex := 1;

  if OpenDialog1.Execute then
  begin
    i:=0;
    AssignFile(file1, OpenDialog1.FileName);
    Reset(file1);
  while not Eof(file1) do
    begin
      Readln(file1, data[i], ecgdata[i]);
      ListBox1.Items.Add(FloatToStr(ecgdata[i]));
      i:=i+1;
    end;
    n :=i;
    CloseFile(file1);
  for j := 0 to n-1 do
    begin
    Series1.AddXY(j/fs, ecgdata[j]);
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i  : integer;
f, a : double;
baseline, t : double;
begin
Series2.Clear;
  A := StrToFloat(Edit1.Text);
  f := StrToFloat(Edit2.Text);
  for i := 0 to n-1 do
  begin
    t := i / fs;
    baseline := A * Sin(2 * pi * f * t);
    Series2.AddXY(t, ecgdata[i] + baseline);
  end;
end;

end.
