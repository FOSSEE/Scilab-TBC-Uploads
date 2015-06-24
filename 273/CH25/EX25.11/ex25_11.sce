clc;clear;
//Example 25.11
//calculation of sum of two octal numbers

//given values
X='256';//divident
Y='437';//divisor

//calculation
x=oct2dec(X);//decimal equivalent
y=oct2dec(Y);//decimal equivalent
z=x+y;
Z=dec2oct(z);//binary equivalent
disp(Z,'sum of the given octal numbers is')
