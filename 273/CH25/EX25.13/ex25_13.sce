clc;clear;
//Example 25.13
//calculation of sum of hexadecimal numbers

//given values
X1='C';
X2='A';
X3='E';
Y1='3';
Y2='2';
Y3='D';

//calculation
x1=hex2dec(X1);//decimal equivalent
x2=hex2dec(X2);//decimal equivalent
x3=hex2dec(X3);//decimal equivalent
y1=hex2dec(Y1);//decimal equivalent
y2=hex2dec(Y2);//decimal equivalent
y3=hex2dec(Y3);//decimal equivalent
z1=x1+y1;
z2=x2+y2;
z3=x3+y3;
Z1=dec2hex(z1);//binary equivalent of sum
Z2=dec2hex(z2);//binary equivalent of sum
Z3=dec2hex(z3);//binary equivalent of sum
disp(Z1,'sum of the first set of hexadecimal numbers is');
disp(Z2,'sum of the second set of hexadecimal numbers is');
disp(Z3,'sum of the thirdm set of hexadecimal numbers is');
