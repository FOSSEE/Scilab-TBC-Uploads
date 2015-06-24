//Example No. 3_02
//hexadecimal to decimal
//Pg No. 46
clear ; close ; clc ;

h = '12AF' ;
u = str2code(h)
u = abs(u)
n = length(u)
d = 0
for i = 1:n
    d = d*16 + u(i)
end
disp(d,'Decimal value = ')
//Using Scilab Function
d = hex2dec(h)
disp(d,'Using scilab function Decimal value = ')