clc;clear;
//Example 25.12
//calculation of product of two octal numbers

//given values
X='15';//divident
Y='24';//divisor

//calculation
x=oct2dec(X);//decimal equivalent
y=oct2dec(Y);//decimal equivalent
z=x*y;
Z=dec2oct(z);//binary equivalent
disp(Z,'product of the given octal numbers is')
