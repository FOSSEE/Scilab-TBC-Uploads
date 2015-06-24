//Example 2-31//
// -4,-15,-17 in two’s complement form//
clc
//clears the console//
clear
//clears all existing variables//
x=2^12
//Smallest nine bit number//
p=4
q=15
r=17
u=x-p
v=x-q
w=x-r
//subtraction//
a=dec2bin(u)
b=dec2bin(v)
c=dec2bin(w)
//binary conversion of the decimal number//
disp(' -4 in two’s complement form is ')
disp(a)
disp(' -15 in two’s complement form is ')
disp(b)
disp(' -17 in two’s complement form is ')
disp(c)
//answers in binary form//
