program z2;
var str, substr, res:string; // фактические, глобальные, по ссылке
len, sublen, i , j, k:integer;
ff, fl:boolean;
begin
  writeln('Введите строку:');
  readln(str);
  writeln('Введите подстроку:');
  readln(substr);
  len := length(str);
  sublen := length(substr);
  ff := false;
  fl := false;
  i:=1;
  while (i <= len - sublen + 1) and (not ff or not fl) do
  begin
    j := 1; // локальные
    k := i;
    while (j <= sublen) and (str[k] = substr[j]) do
    begin
      j := j+1; // формальные
      k := k+1;
    end;
    if j > sublen then
    begin
      if not ff then
      begin
        ff := true;
        for k := i to len - sublen do
          str[k] :=str[k+sublen];
        len := length(str);
      end
      else
      begin
        ff := true;
        for k:= i to len - sublen do
          str[k] := str[k + sublen];
        len := length(str);
      end;
    end
    else
      i := length(str) + 1;
  end;
  writeln('Результат:', str); // фактические
  readln;
end.
