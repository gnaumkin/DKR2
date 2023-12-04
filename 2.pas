program dkr2;
var str, substr, newstr: string;
    i1, i2, i: integer;
begin
  writeln('Введите строку: ');
  readln(str);
  writeln('Введите подстроку: ');
  readln(substr);
  i1 := 0;
  i2 := 0;
  for i := 1 to length(str) do
  begin
    if str[i..i + length(substr)-1] = substr then
    begin
      if i1 = 0 then
      begin
        i1 := 1;
      end;
      i2 := 1;
    end;
  end;
  if (i1 = 0) or (i2 = 0) then
  begin
    writeln('Подстрока не найдена');
    newstr := str;
  end
  else
  begin
    newstr := str[1..i1-1] + str[i2+length(substr)..length(str)];
  end;
  writeln('Новая строка:', newstr);
end.