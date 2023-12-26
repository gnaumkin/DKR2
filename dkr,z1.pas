program dkr2;
var arr: array[1..10] of integer;
sum,i: integer; // фактические, по ссылке, глобальные
begin
  writeln('Введите элемент массива:');
  for i:=1 to 10 do // локальные
    readln(arr[i]);
  sum:=0;
    for i:=1 to 10 do
    begin
    if i mod 2 <> 0 then
      sum := sum + arr[i]; // формальные
  end;
  writeln('Сумма элементов на нечетных позициях: ', sum); // фактические
  readln;
end.
