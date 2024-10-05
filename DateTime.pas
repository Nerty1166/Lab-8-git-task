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
}