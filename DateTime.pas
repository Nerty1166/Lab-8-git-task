begin
  var (year, flag) := (ReadInteger('Введите год:'), False);
  if (year.Divs(4) and not year.Divs(100)) or (year.Divs(400)) then
    flag := True;
  Print($'Год високосный?: {flag}');
end.