unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids;

type
  TForm2 = class(TForm)
    CondProb: TStringGrid;
    ParamGrid: TStringGrid;
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SetProperties(Sender: TObject);
    procedure UpdateProbTable(Sender: TObject);
    function CharInSet(C : AnsiChar; const CharSet : TSysCharSet) : Boolean; overload;
    procedure CondProbSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure CondProbMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure CondProbMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
      function CharInSet(C : WideChar; const CharSet : TSysCharSet) : Boolean; overload;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
Unit2.Form2.VertScrollBar.Position:=Unit2.Form2.VertScrollBar.Position-20;
end;

procedure TForm2.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
Unit2.Form2.VertScrollBar.Position:=Unit2.Form2.VertScrollBar.Position+20;
end;

function TForm2.CharInSet(C : AnsiChar; const CharSet : TSysCharSet) : Boolean;
begin
  Result := C in CharSet;
end;

function TForm2.CharInSet(C : WideChar; const CharSet : TSysCharSet) : Boolean;
begin
  Result := (C < #$0100) and (AnsiChar(C) in CharSet);
end;

procedure TForm2.SetProperties(Sender: TObject);
var
i: longint;
begin
  for i:=3 to Pred(ComponentCount) do //BE SURE TO CHANGE THE i IF YOU ADD NEW COMPONENTS, COZ IT BREAKS STUFF
    if Components[i] is TEdit then
      with TEdit(Components[i]) do
      begin
        Width:=60;
                  if(i mod 2 = 0) then //BE SURE TO CHANGE THE = IF YOU ADD NEW COMPONENTS, COZ IT BREAKS STUFF
                   Text:='¬'+Name[1]+' '+Text
                // Text:='¬'+Name[1]+' '+IntToStr(i)+' '+Text
                  else
                   Text:=Name[1]+' '+Text;
                 //    Text:=Name[1]+' '+IntToStr(i)+' '+Text;
                  end;
      end;

procedure TForm2.CondProbSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
UpdateProbTable(Sender);
end;

procedure TForm2.UpdateProbTable(Sender: TObject);
  var
  i, j, k: longint;
  begin
for i:=0 to CondProb.ColCount do
  begin
  for j:=0 to CondProb.RowCount do
  begin
  CondProb.Cells[i, j]:=StringReplace(CondProb.Cells[i, j], '.', ',', [rfReplaceAll, rfIgnoreCase]);
  if (Length(CondProb.Cells[i, j]) = 0) then
      CondProb.Cells[i, j]:='0';
    end;

    for k:=1 to CondProb.RowCount do
      begin
      CondProb.Cells[1, k]:=FloatToStr(1-StrToFloat(CondProb.Cells[0, k]));
      end;

  end;
end;


procedure TForm2.CondProbMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
Unit2.Form2.VertScrollBar.Position:=Unit2.Form2.VertScrollBar.Position+20;
end;

procedure TForm2.CondProbMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
Unit2.Form2.VertScrollBar.Position:=Unit2.Form2.VertScrollBar.Position-20;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
CondProb.Cells[0, 0]:='óñë. g';
CondProb.Cells[1, 0]:='óñë. ¬g';
CondProb.Cells[2, 0]:='g ÏÎÐ';
CondProb.Cells[3, 0]:='g ÏÏÐ';
CondProb.Cells[0, 1]:='0,99';
CondProb.Cells[0, 2]:='0,9';
CondProb.Cells[0, 3]:='0,9';
CondProb.Cells[0, 4]:='0,5';
CondProb.Cells[0, 5]:='0,9';
CondProb.Cells[0, 6]:='0,6';
CondProb.Cells[0, 7]:='0,4';
CondProb.Cells[0, 8]:='0,3';
CondProb.Cells[0, 9]:='0,9';
CondProb.Cells[0, 10]:='0,8';
CondProb.Cells[0, 11]:='0,6';
CondProb.Cells[0, 12]:='0,4';
CondProb.Cells[0, 13]:='0,8';
CondProb.Cells[0, 14]:='0,5';
CondProb.Cells[0, 15]:='0,4';
CondProb.Cells[0, 16]:='0,2';
CondProb.Cells[0, 17]:='0,9';
CondProb.Cells[0, 18]:='0,7';
CondProb.Cells[0, 19]:='0,7';
CondProb.Cells[0, 20]:='0,5';
CondProb.Cells[0, 21]:='0,8';
CondProb.Cells[0, 22]:='0,6';
CondProb.Cells[0, 23]:='0,7';
CondProb.Cells[0, 24]:='0,8';
CondProb.Cells[0, 25]:='0,6';
CondProb.Cells[0, 26]:='0,7';
CondProb.Cells[0, 27]:='0,4';
CondProb.Cells[0, 28]:='0,6';
CondProb.Cells[0, 29]:='0,4';
CondProb.Cells[0, 30]:='0,4';
CondProb.Cells[0, 31]:='0,2';
CondProb.Cells[0, 32]:='0,8';
CondProb.Cells[0, 33]:='0,6';
CondProb.Cells[0, 34]:='0,6';
CondProb.Cells[0, 35]:='0,5';
CondProb.Cells[0, 36]:='0,7';
CondProb.Cells[0, 37]:='0,6';
CondProb.Cells[0, 38]:='0,5';
CondProb.Cells[0, 39]:='0,3';
CondProb.Cells[0, 40]:='0,8';
CondProb.Cells[0, 41]:='0,6';
CondProb.Cells[0, 42]:='0,6';
CondProb.Cells[0, 43]:='0,4';
CondProb.Cells[0, 44]:='0,7';
CondProb.Cells[0, 45]:='0,4';
CondProb.Cells[0, 46]:='0,3';
CondProb.Cells[0, 47]:='0,1';
CondProb.Cells[0, 48]:='0,8';
CondProb.Cells[0, 49]:='0,6';
CondProb.Cells[0, 50]:='0,6';
CondProb.Cells[0, 51]:='0,4';
CondProb.Cells[0, 52]:='0,7';
CondProb.Cells[0, 53]:='0,5';
CondProb.Cells[0, 54]:='0,6';
CondProb.Cells[0, 55]:='0,4';
CondProb.Cells[0, 56]:='0,7';
CondProb.Cells[0, 57]:='0,5';
CondProb.Cells[0, 58]:='0,3';
CondProb.Cells[0, 59]:='0,2';
CondProb.Cells[0, 60]:='0,5';
CondProb.Cells[0, 61]:='0,3';
CondProb.Cells[0, 62]:='0,2';
CondProb.Cells[0, 63]:='0,1';
CondProb.Cells[0, 64]:='0,01';
UpdateProbTable(sender);
end;

end.
