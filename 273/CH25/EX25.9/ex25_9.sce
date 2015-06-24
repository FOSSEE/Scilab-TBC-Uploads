clc;clear;
//Example 25.9
//calculation of quotient of two binary numbers

//given values
X='1101001';//divident
Y='101';//divisor

//calculation
x=bin2dec(X);//decimal equivalent
y=bin2dec(Y);//decimal equivalent
z=x/y;
Z=dec2bin(z);
disp(Z,'quotient of the given binary numbers with last two digits in fractional part is ')
