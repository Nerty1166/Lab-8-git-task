begin
  var (year, flag) := (ReadInteger('Введите год:'), False);
  Assert(year > 0);
  if (year.Divs(4) and not year.Divs(100)) or (year.Divs(400)) then
    flag := True;
  Print($'Год високосный?: {flag}');
  Println();
  
  var (d1, m1) := ReadInteger2('Первая дата:');
  var (d2, m2) := ReadInteger2('Вторая дата:');
  Assert((d1 in 1..31) and (d2 in 1..31) and (m1 in 1..12) and (m2 in 1..12));
  if m1>m2 then
    Print('Первая дата ближе к новому году')
  else
    if m1 <> m2 then
      Print('Вторая дата ближе к новому году')
    else
      if d1 > d2 then
        Print('Первая дата ближе к новому году')
      else
        if d1 <> d2 then
          Print('Вторая дата ближе к новому году')
        else
          Print('Одна дата');
        
  Println();
  if flag = True then
    Print('Кол-во дней: 366')
  else
    Print('Кол-во дней: 365');
  Println();
  
  var (y1, y2) := ReadInteger2('Введите два года:');
  var sum := 0;
  Assert(y1 < y2);
  Assert((y1 > 0) and (y2 > 0));
  for var i := y1 to y2 do
    begin
    flag:=False;
    if (year.Divs(4) and not year.Divs(100)) or (year.Divs(400)) then
      flag := True;
    if flag = True then
      sum+=366
    else
      sum+=365;
    end;
  Print($'Дней в сумме: {sum}');
end.

{
Лог 1:
Введите год: 2024
Год високосный?: True 

Лог 2:
Введите год: 2024
Год високосный?: True 
Первая дата: 11 05
Вторая дата: 12 05
Вторая дата ближе к новому году 

Лог 3:
Введите год: 2044
Год високосный?: True 
Первая дата: 11 06
Вторая дата: 11 05
Первая дата ближе к новому году 
Кол-во дней: 366 

Лог 4:
Введите год: 3000
Год високосный?: False 
Первая дата: 11 05
Вторая дата: 12 05
Вторая дата ближе к новому году 
Кол-во дней: 365 
Введите два года: 2024 2026
Дней в сумме: 1095 
}