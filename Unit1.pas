unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, Menus, OleCtrls, VCFI,
  ComCtrls, Buttons, ExtCtrls, Unit2, Unit3, Unit4, Math;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Cols1: TLabel;
    LabelHint: TLabel;
    BitBtn1: TBitBtn;
    FillBtn: TBitBtn;
    IntChk: TCheckBox;
    BitBtn2: TBitBtn;
    AverageVal: TStringGrid;
    ShowGraph: TBitBtn;
    Experts: TMemo;
    AverageLabel: TLabel;
    ShowGrid: TBitBtn;
    ShowCheck: TBitBtn;
    function ComputeColumn(Sender: TObject; i: Integer): double;
    procedure RefreshNames(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FillBtnClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure StringGrid1SetEditText(Sender: TObject; ACol, ARow: Integer; const Value: String);
    procedure CountAverageVal(Sender: TObject; ACol: Integer);
    procedure ShowGraphClick(Sender: TObject);
    procedure ShowGridClick(Sender: TObject);
    procedure ShowCheckClick(Sender: TObject);

    

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
i, j: longint;
s, s2: string;
sumg3, sumg4, a1, b1, c1, d1, e1, a2, b2, c2, d2, e2, g1, g2, g3, g4: double;
begin
s:='S(g ���)=';
s2:='S(g ���)=';
ShowGraph.Visible:=True;
ShowGrid.Visible:=True;
ShowCheck.Visible:=True;
for i:=0 to StringGrid1.ColCount-1 do
begin

  for j:=0 to StringGrid1.RowCount-1 do
  begin
  StringGrid1.Cells[i, j]:=StringReplace(StringGrid1.Cells[i, j], '.', ',', [rfReplaceAll, rfIgnoreCase]);
  if (Length(StringGrid1.Cells[i, j]) = 0) then
      StringGrid1.Cells[i, j]:='0';
  end;

end;
Unit2.Form2.Show;
Unit3.Form3.Show;
Unit4.Form4.Show;

//spaghetti code yay since I have no idea how to implement this crap
// (be my guest if you know how)


a1:=ComputeColumn(sender, 0);
a2:=1-a1;
b1:=ComputeColumn(sender, 1);
b2:=1-b1;
c1:=ComputeColumn(sender, 2);
c2:=1-c1;
d1:=ComputeColumn(sender, 3);
d2:=1-d1;
e1:=ComputeColumn(sender, 4);
e2:=1-e1;

Unit3.Form3.a1.Text:=FloatToStr(a1);
Unit3.Form3.a2.Text:=FloatToStr(a2);

Unit3.Form3.b1.Text:=FloatToStr(b1);
Unit3.Form3.b2.Text:=FloatToStr(b2);
Unit3.Form3.b3.Text:=FloatToStr(b1);
Unit3.Form3.b4.Text:=FloatToStr(b2);

Unit3.Form3.c1.Text:=FloatToStr(c1);
Unit3.Form3.c2.Text:=FloatToStr(c2);
Unit3.Form3.c3.Text:=FloatToStr(c1);
Unit3.Form3.c4.Text:=FloatToStr(c2);
Unit3.Form3.c5.Text:=FloatToStr(c1);
Unit3.Form3.c6.Text:=FloatToStr(c2);
Unit3.Form3.c7.Text:=FloatToStr(c1);
Unit3.Form3.c8.Text:=FloatToStr(c2);

Unit3.Form3.d1.Text:=FloatToStr(d1);
Unit3.Form3.d2.Text:=FloatToStr(d2);
Unit3.Form3.d3.Text:=FloatToStr(d1);
Unit3.Form3.d4.Text:=FloatToStr(d2);
Unit3.Form3.d5.Text:=FloatToStr(d1);
Unit3.Form3.d6.Text:=FloatToStr(d2);
Unit3.Form3.d7.Text:=FloatToStr(d1);
Unit3.Form3.d8.Text:=FloatToStr(d2);
Unit3.Form3.d9.Text:=FloatToStr(d1);
Unit3.Form3.d10.Text:=FloatToStr(d2);
Unit3.Form3.d11.Text:=FloatToStr(d1);
Unit3.Form3.d12.Text:=FloatToStr(d2);
Unit3.Form3.d13.Text:=FloatToStr(d1);
Unit3.Form3.d14.Text:=FloatToStr(d2);
Unit3.Form3.d15.Text:=FloatToStr(d1);
Unit3.Form3.d16.Text:=FloatToStr(d2);

Unit3.Form3.e1.Text:=FloatToStr(e1);
Unit3.Form3.e2.Text:=FloatToStr(e2);
Unit3.Form3.e3.Text:=FloatToStr(e1);
Unit3.Form3.e4.Text:=FloatToStr(e2);
Unit3.Form3.e5.Text:=FloatToStr(e1);
Unit3.Form3.e6.Text:=FloatToStr(e2);
Unit3.Form3.e7.Text:=FloatToStr(e1);
Unit3.Form3.e8.Text:=FloatToStr(e2);
Unit3.Form3.e9.Text:=FloatToStr(e1);
Unit3.Form3.e10.Text:=FloatToStr(e2);
Unit3.Form3.e11.Text:=FloatToStr(e1);
Unit3.Form3.e12.Text:=FloatToStr(e2);
Unit3.Form3.e13.Text:=FloatToStr(e1);
Unit3.Form3.e14.Text:=FloatToStr(e2);
Unit3.Form3.e15.Text:=FloatToStr(e1);
Unit3.Form3.e16.Text:=FloatToStr(e2);
Unit3.Form3.e17.Text:=FloatToStr(e1);
Unit3.Form3.e18.Text:=FloatToStr(e2);
Unit3.Form3.e19.Text:=FloatToStr(e1);
Unit3.Form3.e20.Text:=FloatToStr(e2);
Unit3.Form3.e21.Text:=FloatToStr(e1);
Unit3.Form3.e22.Text:=FloatToStr(e2);
Unit3.Form3.e23.Text:=FloatToStr(e1);
Unit3.Form3.e24.Text:=FloatToStr(e2);
Unit3.Form3.e25.Text:=FloatToStr(e1);
Unit3.Form3.e26.Text:=FloatToStr(e2);
Unit3.Form3.e27.Text:=FloatToStr(e1);
Unit3.Form3.e28.Text:=FloatToStr(e2);
Unit3.Form3.e29.Text:=FloatToStr(e1);
Unit3.Form3.e30.Text:=FloatToStr(e2);
Unit3.Form3.e31.Text:=FloatToStr(e1);
Unit3.Form3.e32.Text:=FloatToStr(e2);

//the neat part

Unit4.Form4.CheckMemo.Lines.Clear;
Unit4.Form4.CheckMemo2.Lines.Clear;

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 1]);
Unit4.Form4.CheckMemo.Lines.Add('a*b*c*d*e*g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b1*c1*d1*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 2]);
Unit4.Form4.CheckMemo.Lines.Add('a*b*c*d*�e*g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b1*c1*d1*e2*g1));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 3]);
Unit4.Form4.CheckMemo.Lines.Add('a*b*c*�d*e*g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b1*c1*d2*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 4]);
Unit4.Form4.CheckMemo.Lines.Add('a*b*c*�d*�e*g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b1*c1*d2*e2*g1));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 5]);
Unit4.Form4.CheckMemo.Lines.Add('a*b*�c*d*e*g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b1*c2*d1*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 6]);
Unit4.Form4.CheckMemo.Lines.Add('a*b*�c*d*�e*g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b1*c2*d1*e2*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 7]);
Unit4.Form4.CheckMemo.Lines.Add('a*b*�c*�d*e*g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b1*c2*d2*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 8]);
Unit4.Form4.CheckMemo.Lines.Add('a*b*�c*�d*�e*g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b1*c2*d2*e2*g1));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 9]);
Unit4.Form4.CheckMemo.Lines.Add('a*�b*c*d*e*g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b2*c1*d1*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 10]);
Unit4.Form4.CheckMemo.Lines.Add('a*�b*c*d*�e*g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b2*c1*d1*e2*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 11]);
Unit4.Form4.CheckMemo.Lines.Add('a*�b*c*�d*e*g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b2*c2*d2*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 12]);
Unit4.Form4.CheckMemo.Lines.Add('a*�b*c*�d*�e*g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b2*c1*d2*e2*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 13]);
Unit4.Form4.CheckMemo.Lines.Add('a*�b*�c*d*e*g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b2*c2*d1*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 14]);
Unit4.Form4.CheckMemo.Lines.Add('a*�b*�c*d*�e*g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b2*c2*d1*e2*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 15]);
Unit4.Form4.CheckMemo.Lines.Add('a*�b*�c*�d*e*g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b2*c2*d2*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 16]);
Unit4.Form4.CheckMemo.Lines.Add('a*�b*�c*�d*�e*g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a1*b2*c2*d2*e2*g1));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 17]);
Unit4.Form4.CheckMemo.Lines.Add('�a*b*c*d*e*g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b1*c1*d1*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 18]);
Unit4.Form4.CheckMemo.Lines.Add('�a*b*c*d*�e*g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b1*c1*d1*e2*g1));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 19]);
Unit4.Form4.CheckMemo.Lines.Add('�a*b*c*�d*e*g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b1*c1*d2*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 20]);
Unit4.Form4.CheckMemo.Lines.Add('�a*b*c*�d*�e*g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b1*c1*d2*e2*g1));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 21]);
Unit4.Form4.CheckMemo.Lines.Add('�a*b*�c*d*e*g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b1*c2*d1*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 22]);
Unit4.Form4.CheckMemo.Lines.Add('�a*b*�c*d*�e*g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b1*c2*d1*e2*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 23]);
Unit4.Form4.CheckMemo.Lines.Add('�a*b*�c*�d*e*g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b1*c2*d2*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 24]);
Unit4.Form4.CheckMemo.Lines.Add('�a*b*�c*�d*�e*g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b1*c2*d2*e2*g1));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 25]);
Unit4.Form4.CheckMemo.Lines.Add('�a*�b*c*d*e*g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b2*c1*d1*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 26]);
Unit4.Form4.CheckMemo.Lines.Add('�a*�b*c*d*�e*g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b2*c1*d1*e2*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 27]);
Unit4.Form4.CheckMemo.Lines.Add('�a*�b*c*�d*e*g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b2*c2*d2*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 28]);
Unit4.Form4.CheckMemo.Lines.Add('�a*�b*c*�d*�e*g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b2*c1*d2*e2*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 29]);
Unit4.Form4.CheckMemo.Lines.Add('�a*�b*�c*d*e*g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b2*c2*d1*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 30]);
Unit4.Form4.CheckMemo.Lines.Add('�a*�b*�c*d*�e*g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b2*c2*d1*e2*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 31]);
Unit4.Form4.CheckMemo.Lines.Add('�a*�b*�c*�d*e*g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b2*c2*d2*e1*g1));
g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 32]);
Unit4.Form4.CheckMemo.Lines.Add('�a*�b*�c*�d*�e*g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g1)+'='+FloatToStr(a2*b2*c2*d2*e2*g1));
//Unit4.Form4.CheckMemo.Lines.Add('');

g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 1]);
Unit4.Form4.CheckMemo2.Lines.Add('a*b*c*d*e*�g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b1*c1*d1*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 2]);
Unit4.Form4.CheckMemo2.Lines.Add('a*b*c*d*�e*�g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b1*c1*d1*e2*g2));

g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 3]);
Unit4.Form4.CheckMemo2.Lines.Add('a*b*c*�d*e*�g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b1*c1*d2*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 4]);
Unit4.Form4.CheckMemo2.Lines.Add('a*b*c*�d*�e*�g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b1*c1*d2*e2*g2));

g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 5]);
Unit4.Form4.CheckMemo2.Lines.Add('a*b*�c*d*e*�g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b1*c2*d1*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 6]);
Unit4.Form4.CheckMemo2.Lines.Add('a*b*�c*d*�e*�g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b1*c2*d1*e2*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 7]);
Unit4.Form4.CheckMemo2.Lines.Add('a*b*�c*�d*e*�g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b1*c2*d2*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 8]);
Unit4.Form4.CheckMemo2.Lines.Add('a*b*�c*�d*�e*�g='+FloatToStr(a1)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b1*c2*d2*e2*g2));

g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 9]);
Unit4.Form4.CheckMemo2.Lines.Add('a*�b*c*d*e*�g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b2*c1*d1*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 10]);
Unit4.Form4.CheckMemo2.Lines.Add('a*�b*c*d*�e*�g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b2*c1*d1*e2*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 11]);
Unit4.Form4.CheckMemo2.Lines.Add('a*�b*c*�d*e*�g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b2*c2*d2*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 12]);
Unit4.Form4.CheckMemo2.Lines.Add('a*�b*c*�d*�e*�g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b2*c1*d2*e2*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 13]);
Unit4.Form4.CheckMemo2.Lines.Add('a*�b*�c*d*e*�g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b2*c2*d1*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 14]);
Unit4.Form4.CheckMemo2.Lines.Add('a*�b*�c*d*�e*�g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b2*c2*d1*e2*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 15]);
Unit4.Form4.CheckMemo2.Lines.Add('a*�b*�c*�d*e*�g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b2*c2*d2*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 16]);
Unit4.Form4.CheckMemo2.Lines.Add('a*�b*�c*�d*�e*�g='+FloatToStr(a1)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a1*b2*c2*d2*e2*g2));

g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 17]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*b*c*d*e*�g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b1*c1*d1*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 18]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*b*c*d*�e*�g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b1*c1*d1*e2*g2));

g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 19]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*b*c*�d*e*�g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b1*c1*d2*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 20]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*b*c*�d*�e*�g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b1*c1*d2*e2*g2));

g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 21]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*b*�c*d*e*�g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b1*c2*d1*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 22]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*b*�c*d*�e*�g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b1*c2*d1*e2*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 23]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*b*�c*�d*e*�g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b1*c2*d2*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 24]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*b*�c*�d*�e*�g='+FloatToStr(a2)+'*'+FloatToStr(b1)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b1*c2*d2*e2*g2));

g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 25]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*�b*c*d*e*�g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b2*c1*d1*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 26]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*�b*c*d*�e*�g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b2*c1*d1*e2*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 27]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*�b*c*�d*e*�g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b2*c2*d2*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 28]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*�b*c*�d*�e*�g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c1)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b2*c1*d2*e2*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 29]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*�b*�c*d*e*�g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b2*c2*d1*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 30]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*�b*�c*d*�e*�g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d1)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b2*c2*d1*e2*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 31]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*�b*�c*�d*e*�g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e1)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b2*c2*d2*e1*g2));
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 32]);
Unit4.Form4.CheckMemo2.Lines.Add('�a*�b*�c*�d*�e*�g='+FloatToStr(a2)+'*'+FloatToStr(b2)+'*'+FloatToStr(c2)+'*'+FloatToStr(d2)+'*'+FloatToStr(e2)+'*'+FloatToStr(g2)+'='+FloatToStr(a2*b2*c2*d2*e2*g2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 1]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 1]);
sumg3:=0;
sumg4:=0;
g3:=a1*b1*c1*d1*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 1]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f1.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b1*c1*d1*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 1]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f2.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 2]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 2]);
g3:=a1*b1*c1*d1*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 2]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f3.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b1*c1*d1*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 2]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f4.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 3]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 3]);
g3:=a1*b1*c1*d2*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 3]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f5.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b1*c1*d2*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 3]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f6.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 4]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 4]);
g3:=a1*b1*c1*d2*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 4]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f7.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b1*c1*d2*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 4]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f8.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 5]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 5]);
g3:=a1*b1*c2*d1*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 5]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f9.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b1*c2*d1*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 5]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f10.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 6]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 6]);
g3:=a1*b1*c2*d1*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 6]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f11.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b1*c2*d1*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 6]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f12.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 7]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 7]);
g3:=a1*b1*c2*d2*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 7]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f13.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b1*c2*d2*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 7]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f14.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 8]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 8]);
g3:=a1*b1*c2*d2*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 8]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f15.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b1*c2*d2*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 8]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f16.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 9]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 9]);
g3:=a1*b2*c1*d1*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 9]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f17.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b2*c1*d1*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 9]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f18.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 10]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 10]);
g3:=a1*b2*c1*d1*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 10]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f19.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b2*c1*d1*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 10]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f20.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 11]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 11]);
g3:=a1*b2*c1*d2*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 11]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f21.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b2*c1*d2*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 11]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f22.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 12]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 12]);
g3:=a1*b2*c1*d2*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 12]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f23.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b2*c1*d2*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 12]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f24.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 13]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 13]);
g3:=a1*b2*c2*d1*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 13]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f25.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b2*c2*d1*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 13]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f26.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 14]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 14]);
g3:=a1*b2*c2*d1*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 14]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f27.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b2*c2*d1*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 14]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f28.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 15]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 15]);
g3:=a1*b2*c2*d2*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 15]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f29.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b2*c2*d2*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 15]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f30.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 16]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 16]);
g3:=a1*b2*c2*d2*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 16]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f31.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a1*b2*c2*d2*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 16]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f32.Text:=FloatToStr(RoundTo(g2, -2));

//test here

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 17]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 17]);
g3:=a2*b1*c1*d1*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 17]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f33.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b1*c1*d1*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 17]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f34.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 18]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 18]);
g3:=a2*b1*c1*d1*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 18]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f35.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b1*c1*d1*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 18]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f36.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 19]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 19]);
g3:=a2*b1*c1*d2*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 19]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f37.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b1*c1*d2*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 19]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f38.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 20]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 20]);
g3:=a2*b1*c1*d2*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 20]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f39.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b1*c1*d2*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 20]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f40.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 21]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 21]);
g3:=a2*b1*c2*d1*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 21]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f41.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b1*c2*d1*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 21]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f42.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 22]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 22]);
g3:=a2*b1*c2*d1*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 22]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f43.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b1*c2*d1*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 22]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f44.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 23]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 23]);
g3:=a2*b1*c2*d2*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 23]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f45.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b1*c2*d2*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 23]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f46.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 24]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 24]);
g3:=a2*b1*c2*d2*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 24]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f47.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b1*c2*d2*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 24]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f48.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 25]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 25]);
g3:=a2*b2*c1*d1*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 25]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f49.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b2*c1*d1*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 25]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f50.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 26]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 26]);
g3:=a2*b2*c1*d1*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 26]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f51.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b2*c1*d1*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 26]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f52.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 27]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 27]);
g3:=a2*b2*c1*d2*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 27]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f53.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b2*c1*d2*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 27]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f54.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 28]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 28]);
g3:=a2*b2*c1*d2*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 28]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f55.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b2*c1*d2*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 28]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f56.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 29]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 29]);
g3:=a2*b2*c2*d1*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 29]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f57.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b2*c2*d1*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 29]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f58.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 30]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 30]);
g3:=a2*b2*c2*d1*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 30]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f59.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b2*c2*d1*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 30]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f60.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 31]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 31]);
g3:=a2*b2*c2*d2*e1*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 31]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f61.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b2*c2*d2*e1*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 31]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f62.Text:=FloatToStr(RoundTo(g2, -2));

g1:=StrToFloat(Unit2.Form2.CondProb.Cells[0, 32]);
g2:=StrToFloat(Unit2.Form2.CondProb.Cells[1, 32]);
g3:=a2*b2*c2*d2*e2*g1;
sumg3:=sumg3+g3;
s:=s+'+'+FloatToStr(sumg3);
Unit2.Form2.CondProb.Cells[2, 32]:=FloatToStr(RoundTo(g3, -2));
Unit3.Form3.f63.Text:=FloatToStr(RoundTo(g1, -2));
g4:=a2*b2*c2*d2*e2*g2;
sumg4:=sumg4+g4;
s2:=s2+'+'+FloatToStr(sumg4);
Unit2.Form2.CondProb.Cells[3, 32]:=FloatToStr(RoundTo(g4, -2));
Unit3.Form3.f64.Text:=FloatToStr(RoundTo(g2, -2));

Unit2.Form2.CondProb.Cells[1, 33]:='0';
Unit2.Form2.CondProb.Cells[0, 33]:='0';
Unit2.Form2.CondProb.Cells[2, 33]:='S='+FloatToStr(RoundTo(sumg3, -2));
Unit2.Form2.CondProb.Cells[3, 33]:='S='+FloatToStr(RoundTo(sumg4, -2));

//test here

for i:=0 to Unit4.Form4.CheckMemo.Lines.Count-1 do Unit4.Form4.CheckMemo.Lines.Strings[i]:=IntToStr(i+1)+' '+Unit4.Form4.CheckMemo.Lines.Strings[i];
for i:=0 to Unit4.Form4.CheckMemo.Lines.Count-1 do Unit4.Form4.CheckMemo.Height:=Unit4.Form4.CheckMemo.Height+22;

for i:=0 to Unit4.Form4.CheckMemo2.Lines.Count-1 do Unit4.Form4.CheckMemo2.Lines.Strings[i]:=IntToStr(i+33)+' '+Unit4.Form4.CheckMemo2.Lines.Strings[i];
Unit4.Form4.CheckMemo2.Height:=Unit4.Form4.CheckMemo.Height;
//for vertical position
//Unit4.Form4.CheckMemo2.Top:=Unit4.Form4.CheckMemo.Top+Unit4.Form4.CheckMemo.Height;
Unit4.Form4.CheckMemo2.Left:=Unit4.Form4.CheckMemo.Left+Unit4.Form4.CheckMemo.Width+6;

s:=s+'='+FloatToStr(sumg3);
s2:=s2+'='+FloatToStr(sumg4);
Unit4.Form4.CheckMemo.Lines.Add(s);
Unit4.Form4.CheckMemo2.Lines.Add(s2);

Unit2.Form2.ParamGrid.Cells[0, 0]:='a';
Unit2.Form2.ParamGrid.Cells[1, 0]:='b';
Unit2.Form2.ParamGrid.Cells[2, 0]:='c';
Unit2.Form2.ParamGrid.Cells[3, 0]:='d';
Unit2.Form2.ParamGrid.Cells[4, 0]:='e';
Unit2.Form2.ParamGrid.Cells[5, 0]:='� �����';

j:=0;

for i:=1 to Unit2.Form2.ParamGrid.RowCount-2 do
begin
    Unit2.Form2.ParamGrid.Cells[5, i]:=IntToStr(i)+', '+IntToStr(i+32);
    end;

for i:=1 to Unit2.Form2.ParamGrid.RowCount-2 do
begin
    if(i mod 2 <> 0) then Unit2.Form2.ParamGrid.Cells[4, i]:='e='+FloatToStr(e1)
    else Unit2.Form2.ParamGrid.Cells[4, i]:='�e='+FloatToStr(e2);
    end;

for i:=1 to Unit2.Form2.ParamGrid.RowCount-2 do
begin
    if(i=1) then j:=0;

    if(Length(Unit2.Form2.ParamGrid.Cells[3, i]) > 0) then
      Continue;


    if(i mod 2 <> 0) then Unit2.Form2.ParamGrid.Cells[3, i]:='d='+FloatToStr(d1)
    else
        Unit2.Form2.ParamGrid.Cells[3, i]:='�d='+FloatToStr(d2);

    j:=j+1;

    if(j=2) then j:=0;
    if(j=0) then Unit2.Form2.ParamGrid.Cells[3, i]:='�d='+FloatToStr(d2);

    Unit2.Form2.ParamGrid.Cells[3, i+1]:=Unit2.Form2.ParamGrid.Cells[3, i];
    end;

for i:=1 to Unit2.Form2.ParamGrid.RowCount-3 do
begin
    if(i=1) then j:=0;

    if(Length(Unit2.Form2.ParamGrid.Cells[2, i]) > 0) then
      Continue;


    if(j = 0) then begin
    j:=1;
    Unit2.Form2.ParamGrid.Cells[2, i]:='c='+FloatToStr(c1);
    end
    else begin
        j:=0;
        Unit2.Form2.ParamGrid.Cells[2, i]:='�c='+FloatToStr(c2);
        end;

    Unit2.Form2.ParamGrid.Cells[2, i+1]:=Unit2.Form2.ParamGrid.Cells[2, i];
    Unit2.Form2.ParamGrid.Cells[2, i+2]:=Unit2.Form2.ParamGrid.Cells[2, i];
    Unit2.Form2.ParamGrid.Cells[2, i+3]:=Unit2.Form2.ParamGrid.Cells[2, i];
end;

for i:=1 to Unit2.Form2.ParamGrid.RowCount-7 do
begin
    if(i=1) then j:=0;

    if(Length(Unit2.Form2.ParamGrid.Cells[1, i]) > 0) then
      Continue;


    if(j = 0) then begin
    j:=1;
    Unit2.Form2.ParamGrid.Cells[1, i]:='b='+FloatToStr(b1);
    end
    else begin
        j:=0;
        Unit2.Form2.ParamGrid.Cells[1, i]:='�b='+FloatToStr(b2);
        end;

        Unit2.Form2.ParamGrid.Cells[1, i+1]:=Unit2.Form2.ParamGrid.Cells[1, i];
        Unit2.Form2.ParamGrid.Cells[1, i+2]:=Unit2.Form2.ParamGrid.Cells[1, i];
        Unit2.Form2.ParamGrid.Cells[1, i+3]:=Unit2.Form2.ParamGrid.Cells[1, i];
        Unit2.Form2.ParamGrid.Cells[1, i+4]:=Unit2.Form2.ParamGrid.Cells[1, i];
        Unit2.Form2.ParamGrid.Cells[1, i+5]:=Unit2.Form2.ParamGrid.Cells[1, i];
        Unit2.Form2.ParamGrid.Cells[1, i+6]:=Unit2.Form2.ParamGrid.Cells[1, i];
        Unit2.Form2.ParamGrid.Cells[1, i+7]:=Unit2.Form2.ParamGrid.Cells[1, i];
end;

for i:=1 to Unit2.Form2.ParamGrid.RowCount-15 do
begin
    if(i=1) then j:=0;

    if(Length(Unit2.Form2.ParamGrid.Cells[0, i]) > 0) then
      Continue;


    if(j = 0) then begin
    j:=1;
    Unit2.Form2.ParamGrid.Cells[0, i]:='a='+FloatToStr(a1);
    end
    else begin
        j:=0;
        Unit2.Form2.ParamGrid.Cells[0, i]:='�a='+FloatToStr(a2);
        end;

    Unit2.Form2.ParamGrid.Cells[0, i+1]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+2]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+3]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+4]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+5]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+6]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+7]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+8]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+9]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+10]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+11]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+12]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+13]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+14]:=Unit2.Form2.ParamGrid.Cells[0, i];
    Unit2.Form2.ParamGrid.Cells[0, i+15]:=Unit2.Form2.ParamGrid.Cells[0, i];
    
end;

Unit2.Form2.UpdateProbTable(sender);
Unit2.Form2.SetProperties(sender);
Unit3.Form3.SetProperties(sender);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
RefreshNames(Sender);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
StringGrid1.RowCount:=StringGrid1.RowCount+1;
RefreshNames(Sender);
end;

function TForm1.ComputeColumn(Sender: TObject; i: integer): double;
var
k: double;
j: longint;
begin
k:=0;
for j:=0 to StringGrid1.RowCount do
begin
  if (Length(StringGrid1.Cells[i, j]) = 0) then
      StringGrid1.Cells[i, j]:='0';
      
k:=k+StrToFloat(StringGrid1.Cells[i, j]);
end;
k:=k/(StringGrid1.RowCount*10);
result:=k;
end;

procedure TForm1.RefreshNames(Sender: TObject);
var
i: longint;
begin
Experts.Lines.Clear;
Cols1.Caption:='';
Experts.Lines.BeginUpdate;
for i:=1 to StringGrid1.RowCount do Experts.Lines.Add('������� '+IntToStr(i));
for i:=1 to StringGrid1.ColCount do Cols1.Caption:=Cols1.Caption+Chr((i-1)+Ord('a'))+'          ';
StringGrid1.Height:=15+(StringGrid1.RowCount*StringGrid1.DefaultRowHeight);
StringGrid1.Width:=15+(StringGrid1.ColCount*StringGrid1.DefaultColWidth);
Experts.Lines.EndUpdate;
Experts.Text:=TrimRight(Experts.Lines.Text);
Experts.Height:=15+StringGrid1.Height;
AverageVal.ColCount:=StringGrid1.ColCount;
AverageVal.Width:=15+(AverageVal.ColCount*AverageVal.DefaultColWidth);
AverageVal.Top:=66+StringGrid1.Height;
AverageLabel.Top:=AverageVal.Top;
BitBtn1.Top:=AverageVal.RowCount*56+StringGrid1.Height;
ShowGraph.Top:=BitBtn1.Top;
ShowGrid.Top:=ShowGraph.Top+36;
ShowCheck.Top:=ShowGrid.Top+36;
FillBtn.Top:=36+BitBtn1.Top;
IntChk.Top:=36+FillBtn.Top;
BitBtn2.Top:=36+IntChk.Top;
end;

procedure TForm1.FillBtnClick(Sender: TObject);
var
i, j: longint;
begin
for i:=0 to StringGrid1.ColCount-1 do
begin

  for j:=0 to StringGrid1.RowCount-1 do
  begin
  if (IntChk.Checked = True) then
      StringGrid1.Cells[i, j]:=IntToStr(Random(5)+5)
  else
      StringGrid1.Cells[i, j]:=FloatToStr(Random(5)+5+(Random(100)/100));
  if StrToFloat(StringGrid1.Cells[i, j]) > 9 then StringGrid1.Cells[i, j]:='9';
      StringGrid1.Cells[i, j]:=StringReplace(StringGrid1.Cells[i, j], '.', ',', [rfReplaceAll, rfIgnoreCase]);
  end;
  CountAverageVal(sender, i);
end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
StringGrid1.RowCount:=StringGrid1.RowCount-1;
RefreshNames(Sender);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
//if (StringGrid1.ColCount < 5) then StringGrid1.ColCount:=StringGrid1.ColCount+1
//else ShowMessage('������������ ���������� ���������� �� ������ ������: 5.');
//RefreshNames(Sender);
end;

procedure TForm1.N5Click(Sender: TObject);
begin
//if (StringGrid1.ColCount > 2) then StringGrid1.ColCount:=StringGrid1.ColCount-1
//else ShowMessage('����������� ���������� ���������� �� ������ ������: 2.');
//RefreshNames(Sender);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
ShowMessage('��������� ������ ������ �� ������ �������� ������ � ����������� ����������� ���������. ����������� ��������� � �������� �����. �����: ����� �.�., ���������� ��� ����������, ������� ������-�������������� ���� ��������� �.�.');
end;

procedure TForm1.StringGrid1SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
begin
CountAverageVal(sender, ACol);
end;

procedure TForm1.CountAverageVal(Sender: TObject; ACol: Integer);
  var
  i: longint;
  k: double;
  begin
k:=0;
for i:=0 to StringGrid1.RowCount-1 do
  begin
    if (Length(StringGrid1.Cells[Acol, i]) = 0) then
      StringGrid1.Cells[Acol, i]:='0';
  k:=k+StrToFloat(StringGrid1.Cells[Acol, i]);
  end;
AverageVal.Cells[Acol, 0]:=FloatToStr(k/StringGrid1.RowCount);
AverageVal.Cells[Acol, 1]:=FloatToStr(k/(StringGrid1.RowCount*10));
AverageVal.Cells[Acol, 2]:=FloatToStr(1-(k/(StringGrid1.RowCount*10)));
end;

procedure TForm1.ShowGraphClick(Sender: TObject);
begin
Unit3.Form3.Show;
Unit3.Form3.ScrollBy(1,1);
end;

procedure TForm1.ShowGridClick(Sender: TObject);
begin
Unit2.Form2.Show;
Unit2.Form2.ScrollBy(1,1);
end;

procedure TForm1.ShowCheckClick(Sender: TObject);
begin
Unit4.Form4.Show;
Unit4.Form4.ScrollBy(1,1);
end;

end.

