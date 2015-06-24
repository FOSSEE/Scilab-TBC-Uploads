// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 2,Example 5")
disp("let the conversion relation be X=aC+b")
disp("where C is temperature in degree celcius,a&b are constants and X is temperature in X degree ")
disp("at freezing point,temperature=0 degree celcius,0 degree X")
disp("so by equation X=aC+b")
X=0;//temperature in degree X
C=0;//temperature in degree celcius
disp("we get b=0")
b=0;
disp("at boiling point,temperature=100 degree celcius,1000 degree X")
X=1000;//temperature in degree X
C=100;//temperature in degree celcius
a=(X-b)/C
disp("conversion relation")
disp("X=10*C")
disp("absolute zero temperature in degree celcius=-273.15")
disp("absolute zero temperature in degree X=")
10*-273.15
