Program KONUERSI_INFIX_KE_POSTFIX;
const Max_Elemen = 255;

type isi = string[Max_Elemen];
stack = record
hasl : isi;
top : 0..Max_Elemen
end;
var Infix : isi; {* notasi infix *}
Lagi : char;
t : stack;

function ALIANSI (macam_op : char) : integer;

begin
case macam_op of
'^' : ALIANSI := 3; {* pangkat *}
'*', '/' : ALIANSI := 2; {* kali atau bagi *}
'+', '-' : ALIANSI := 1; {* plus atau minus *}
'(' : ALIANSI := 0 {* kurung buka *}
end
end;

procedure PUSH (var t : stack; Elemen : char);

begin
t.top := t.top + 1;
t.hasl[t.top] := Elemen
end;

function POP (var t : stack) : char;

begin
POP := t.hasl[t.top];
t.top := t.top - 1
end;
procedure KONVERSI_CETAK (Infix : isi);
procedure KONVERSI_CETAK (Prefix : isi);
procedure KONVERSI_CETAK (Postfix : isi);
var
i : integer;
temp, Kar : char;
opr : set of char;

begin
opr := ['^']+['*']+['/']+['+']+['-'];
for i := 1 to length(Infix) do
begin
Kar := Infix[i]; {* Kurung buka. Push ke dalam tumpukan *}
if Kar = '(' then PUSH(t, Kar)
else if Kar = ')' then
begin
while T.hasl[t.top] <> '<' do
write(POP(T):2);
temp := POP(T)
end

else if Kar in opr then
begin
while (t.top <> 0) and (ALIANSI(Kar) <= ALIANSI(T.hasl[t.top])) do
write(POP(T):2);
PUSH(T, Kar)
end

else if Kar <> ' ' then write(Kar:2)
end;
if t.top <> 0 then
repeat
write(POP(T):2)
until t.top = 0;
end;

begin

writeln('| MENGUBAH NOTASI INFIX MENJADI PREFIX  |');
writeln('| MENGUBAH NOTASI INFIX MENJADI POSTFIX |');
writeln('========================================');
writeln(' =======================================');
writeln(' =======================================');
writeln;

repeat

readln(Infix); writeln;
readln(prefix); writeln;
readln(potsfix); writeln;
write('Masukkan ungkapan  Infix : ');
write('Hasil ungkapan Prefix ');
write('Hasil Ungkapan postfix : ');

KONVERSI_CETAK(Infix);
writeln; writeln;
write('Akan mencoba lagi? Y/N : ');
readln(Lagi);
writeln
until not (Lagi in ['Y', 'y'])
end.
