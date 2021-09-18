unit Unit1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Math, DateUtils, Menus ;
type
  TForm1 = class(TForm)
    btn1: TButton;
    btn4: TButton;
    btn5: TButton;
    StringGrid1: TStringGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    rg1: TRadioGroup;
    StringGrid2: TStringGrid;
    btn7: TButton;
    edt2: TEdit;
    lbl4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure btn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 const
   Nmax=300000;
   type Mas1=array[1..Nmax] of integer;
var
 starttime,endtime,q:integer;
  Form1: TForm1;
  var A:Mas1;
  n,i,j: integer;
implementation
uses Unit2, Unit4;
{$R *.dfm}
procedure TForm1.btn5Click(Sender: TObject);
begin
close
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
Memo1.Clear;
Memo1.Lines.Add('Результаты выполнения в мс:')  ;
 n:=5 ;
 edt1.Text:=FloatToStr(n) ;
  StringGrid1.ColCount:=n+1;
  StringGrid2.ColCount:=n+1;
  RG1.ItemIndex:=0;
  edt2.text:='';
end;
procedure TForm1.btn1Click(Sender: TObject);
begin
  if not (tryStrToint(Edt1.text,n)) or not (n>=0)  then begin
Showmessage('Проверьте введенные данные ');
exit ;  end;
if (n>300000)  then begin
Showmessage('Кол-во элементов массива не может превышать 300000 ');
exit ;  end;
{Проверка размеров массива}
n:=StrToInt(edt1.Text);
StringGrid1.ColCount:=N+1;
StringGrid2.ColCount:=n+1;
 for i:=1 to n do
   StringGrid1.Cols[i].Clear;
   for i:=1 to n do
   StringGrid1.Cols[i].Clear;
   for i:=1 to n do
StringGrid2.Cols[i].Clear;
edt2.text:='';
end;
procedure TForm1.btn4Click(Sender: TObject);
begin
Randomize;
edt2.text:='';
for i:=1 to n do
StringGrid1.Cells[i,0]:=IntToStr(RandomRange(-150,390));
 {Заполнение массива рандомными числами}
for i:=1 to n do
StringGrid2.Cols[i].Clear;
end;
procedure TForm1.btn7Click(Sender: TObject);
var g:string;
min:Integer;
Sort:Boolean;
i, j, k,x,rez,r,temp: integer;
begin
 for i:=1 to n do
StringGrid2.Cols[i].Clear;
 starttime:=GetTickCount;
  {Запуск секундомера}
 for i:=1 to n do
 if not (TryStrToInt(StringGrid1.Cells[i,0],r)) then begin
   ShowMessage('Проверьте введенные данные');
   exit; end;
   for i:=1 to n do begin
     a[i]:=StrToInt(Stringgrid1.Cells[i,0]);
   end;
Case rg1.ItemIndex of
 {Сортировка вставками}
0:for i := 1 to n-1 do
for j := 1 to n-i do
if a[j] > a[j+1] then begin
g:='Время через "Сортировку вставками":';
k := a[j];
a[j]:= a[j+1];
a[j+1] := k;
end;
 {Сортировка пузырьком}
1:for i:=1 to n do
 begin
  g:='Время через "Метод пузырька":';
  min:=i;
  for j:=i+1 to n do 
  if a[j]<a[min] then
  min:=j;
  x:=a[i];
  a[i]:=a[min];
  a[min]:=x;
  end;
 {Сортировка прямым выбором}
2:for i:=2 to n do
  begin
  g:='Время через "Метод прямого выбора":';
    j:=i;
    rez:=a[i];
    while ((j>1)and(a[j-1]>rez)) do
      begin
        a[j]:=a[j-1];
        j:=j-1;
      end;
    a[j]:=rez;
  end;
   {Сортировка линейным методом}
  3: for i:=1 to n do
    for j:=i to n do
      if a[j]<a[i] then
      begin
        g:='Время через "Метод линейной сортировки":';
        temp:=a[i];
        a[i]:=a[j];
        a[j]:=temp
      end;
end;
for i:=1 to n do
 StringGrid2.Cells[i,0]:=FloatToStr(a[i]);
  endtime:=GetTickCount;
  q:=endtime-starttime;
  edt2.text:=FloatToStr(q);
  memo1.Lines.add(g);
    memo1.Lines.add(''+floattostrf(q,fffixed,8,0));
     {Остановка секундомера и его вывод}
 end;
procedure TForm1.Button1Click(Sender: TObject);
begin
for i:=1 to n do
   StringGrid1.Cols[i].Clear;
   for i:=1 to n do
   StringGrid1.Cols[i].Clear;
   for i:=1 to n do
StringGrid2.Cols[i].Clear;
Memo1.Clear;
edt2.Text:='';
 {Очистка всех окон программы}
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
 for i:=1 to n do
StringGrid2.Cols[i].Clear;
 {Очистка отсортированного массива}
end;
procedure TForm1.N4Click(Sender: TObject);
begin
close
end;
procedure TForm1.N3Click(Sender: TObject);
begin
form2.show
end;
procedure TForm1.N2Click(Sender: TObject);
begin
Form4.show
end;
end.
