unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure ComboBox1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  StrAr,NewStrAr: array of String;
  ws:string;

implementation

{$R *.dfm}

procedure TForm2.ComboBox1Change(Sender: TObject); //Вывод условия
begin
if (ComboBox1.ItemIndex=0) then
begin
 Label1.Caption:='Дан текст. Все слова, длина которых равна длине слова максимальной длины, заменить на слово максимальной длины.';
end;

if (ComboBox1.ItemIndex=1) then
begin
 Label1.Caption:='Дан текст. Слова в тексте разделены пробелами. Вычеркнуть из текста все по-вторяющиеся слова.';
end;
end;

procedure TForm2.RadioButton1Click(Sender: TObject); // Задание 1
Const mn=[' ','.',',','-','!','?'];
Var str1,str2,maxs:string;
    i:integer;
Begin
   str1:=Memo1.Text; // получение строки из memo1
    maxs:='';str2:='';str1:=str1+' ';  // обнуление значений
    For i:=1 to Length(str1) do
      if not (str1[i] in mn) then str2:=str2+str1[i]
      else 
      Begin
        if Length(str2)>Length(maxs) then maxs:=str2; // слово максимальный длины
        str2:='';
      End;
    str2:='';
    For i:=1 to Length(str1) do
      if not (str1[i] in mn) then str2:=str2+str1[i]
      else 
      Begin
        if Length(str2)=Length(maxs) then  // Сравнение каждого слова по длине с макс length() - определение длины
        Begin
          Delete(str1,i-Length(maxs),Length(maxs)); // удаление и замена
          Insert(maxs,str1,i-Length(maxs))
        End;
        str2:='';
      end;
      Memo2.Text:=str1; // Вывод результата в Memo2
      ws:=memo2.Text; //запись результата в ws (ws глобальная переменная - видна из любой строчки программы) для дальнейшего сохранения (используется при нажатии на кнопку записать)
end;


procedure TForm2.RadioButton2Click(Sender: TObject); // Задание 2
var
s, s1, s2: string;
  i, n, len, Count: integer;
  del: boolean;
begin
s:=Memo1.Text; // получение строки из memo1
len:=Length(s); // получение длинны
Count:=0;
for i:=0 to len do // Считаем количество слов (исходя из количества пробелов)
begin
if s[i] = ' ' then Count:=Count+1;
end;
Count:=Count+1; // Например, пробела 4, значит слов 5, потому что 4 пробела могут отделять друг от друга только 5 слов, поэтому +1, для получения точного количества слов
setlength(NewStrAr,Count);
s:=s+' ';
  s1:='';
  n:=0;
  while pos(' ',s)>0 do  // цикл нахождения похожих слов и запись отфильтровоного текста в s1
    begin
      i:=0;
      del:=true;
      s2:=copy (s,1,Pos(' ',s)-1);
      delete (s,1,Pos(' ',s));
      while (i<n) and del do
        begin
          i:=i+1;
          if NewStrAr[i]=s2 then del:=false;
        end;
      if del then
        begin
          s1:=s1+' '+s2;
          n:=n+1;
          NewStrAr[n]:=s2;
        end;
    end;
    Memo2.Text:=s1; //Вывод
    ws:=Memo2.Text;     // Описано выше
end;

procedure TForm2.BitBtn1Click(Sender: TObject); // Процедура открытия файла
var
inputfile:textfile;
str,str1:string;
begin
if opendialog1.Execute then
AssignFile(inputfile, openDialog1.FileName);
reset (inputfile);
while not Eof(inputfile) do
begin
readln (inputfile,str);
str1:=str1 + str + ' ';
end;

Memo1.Text:=str1;

end;



procedure TForm2.BitBtn2Click(Sender: TObject); //Процедура сохранения файла
var output:textfile;
    i:integer;
begin
 if savedialog1.Execute then
 begin
 assignfile (output,savedialog1.FileName);
 Rewrite(output);
 Writeln(output, WS);
 closefile(output);
 end;

end;

end.
