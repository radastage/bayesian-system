unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    a1: TEdit;
    a2: TEdit;
    b1: TEdit;
    b2: TEdit;
    b3: TEdit;
    b4: TEdit;
    c1: TEdit;
    c2: TEdit;
    c3: TEdit;
    c4: TEdit;
    c5: TEdit;
    c6: TEdit;
    c7: TEdit;
    c8: TEdit;
    d1: TEdit;
    d2: TEdit;
    d3: TEdit;
    d4: TEdit;
    d5: TEdit;
    d6: TEdit;
    d7: TEdit;
    d8: TEdit;
    d9: TEdit;
    d10: TEdit;
    d11: TEdit;
    d12: TEdit;
    d13: TEdit;
    d14: TEdit;
    d15: TEdit;
    d16: TEdit;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    e6: TEdit;
    e7: TEdit;
    e8: TEdit;
    e9: TEdit;
    e10: TEdit;
    e11: TEdit;
    e12: TEdit;
    e13: TEdit;
    e14: TEdit;
    e15: TEdit;
    e16: TEdit;
    e17: TEdit;
    e18: TEdit;
    e19: TEdit;
    e20: TEdit;
    e21: TEdit;
    e22: TEdit;
    e23: TEdit;
    e24: TEdit;
    e25: TEdit;
    e26: TEdit;
    e27: TEdit;
    e28: TEdit;
    e29: TEdit;
    e30: TEdit;
    e31: TEdit;
    e32: TEdit;
    f1: TEdit;
    f2: TEdit;
    f4: TEdit;
    f3: TEdit;
    f5: TEdit;
    f6: TEdit;
    f7: TEdit;
    f8: TEdit;
    f9: TEdit;
    f10: TEdit;
    f11: TEdit;
    f12: TEdit;
    f13: TEdit;
    f14: TEdit;
    f15: TEdit;
    f16: TEdit;
    f17: TEdit;
    f18: TEdit;
    f19: TEdit;
    f20: TEdit;
    f21: TEdit;
    f22: TEdit;
    f23: TEdit;
    f24: TEdit;
    f25: TEdit;
    f26: TEdit;
    f27: TEdit;
    f28: TEdit;
    f29: TEdit;
    f30: TEdit;
    f31: TEdit;
    f32: TEdit;
    f33: TEdit;
    f34: TEdit;
    f35: TEdit;
    f36: TEdit;
    f37: TEdit;
    f38: TEdit;
    f39: TEdit;
    f40: TEdit;
    f41: TEdit;
    f42: TEdit;
    f43: TEdit;
    f44: TEdit;
    f45: TEdit;
    f46: TEdit;
    f47: TEdit;
    f48: TEdit;
    f49: TEdit;
    f50: TEdit;
    f51: TEdit;
    f52: TEdit;
    f53: TEdit;
    f54: TEdit;
    f55: TEdit;
    f56: TEdit;
    f57: TEdit;
    f58: TEdit;
    f59: TEdit;
    f60: TEdit;
    f61: TEdit;
    f62: TEdit;
    f63: TEdit;
    f64: TEdit;
    _arrow: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    procedure SetProperties(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.SetProperties(Sender: TObject);
var
i: longint;
//x: Char;
begin
  for i:=0 to Pred(ComponentCount) do
    if Components[i] is TEdit then
      with TEdit(Components[i]) do
      begin
                  if(i mod 2 <> 0) then //BE SURE TO CHANGE THE = IF YOU ADD NEW COMPONENTS, COZ IT BREAKS STUFF
                   begin
                   Text:='¬'+Name[1]+'='+Text;

                //   x:=Name[1];
                // Top:=Top-32;
                   end
                // Text:='¬'+Name[1]+' '+IntToStr(i)+' '+Text
                  else
                  begin
                  Text:=Name[1]+'='+Text;
                   end;
                   if(Name[1]='f') then Text:=StringReplace(Text, 'f', 'g', [rfReplaceAll, rfIgnoreCase]);;

                 //    Text:=Name[1]+' '+IntToStr(i)+' '+Text;

                  end;
      end;

procedure TForm3.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
Unit3.Form3.VertScrollBar.Position:=Unit3.Form3.VertScrollBar.Position+20;
end;

procedure TForm3.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
Unit3.Form3.VertScrollBar.Position:=Unit3.Form3.VertScrollBar.Position-20;
end;

end.
