clc;clear;
//Example 25.7
//calculation of product of two binary numbers

//given values
X='10101';//first binary number with last two digits in fractional part
Y='101';//second binary number with last two digits in fractional part

//calculation
x=bin2dec(X);//decimal equivalent
y=bin2dec(Y);//decimal equivalent
z=x*y;
Z=dec2bin(z);
disp(Z,'product of the given binary numbers is ')
