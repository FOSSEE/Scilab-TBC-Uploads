//Exercise 1.1 example 1.1.5
//Add,Substract And Multiply binary numbers
function[a]=add(b,c)
  d=base2dec(b,2)
  e=base2dec(c,2)
  a=d+e
  a=dec2bin(a)
  disp(a,"Result of addition")
endfunction
function[a]=subtract(b,c)
  d=base2dec(b,2)
  e=base2dec(c,2)
  a=d-e
  a=dec2bin(a)
  disp(a,"Result of subtraction")
endfunction
function[a]=multiply(b,c)
  d=base2dec(b,2)
  e=base2dec(c,2)
  a=d*e
  a=dec2bin(a)
  disp(a,"Result  of multiplication");
endfunction
//Calling Routine:
b="11001";
c="10011";
a=add(b,c)
a=subtract(b,c)
a=multiply(b,c)