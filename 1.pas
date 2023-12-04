program dkr2;
var arr: array[1..10] of integer;
sum,i: integer;
begin
  writeln('Введите элемент массива:');
  for i:=1 to 10 do
    readln(arr[i]);
  sum:=0;
    for i:=1 to 10 do
    begin
    if i mod 2 <> 0 then
      sum := sum + arr[i];
  end;
  writeln('Сумма элементов на нечетных позициях: ', sum);
  readln;
end.