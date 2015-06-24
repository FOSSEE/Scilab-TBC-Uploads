// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 3")
//Heat transfer coefficient in W/(m^2*K)
h = 30;
//Thermal conductivity of sphere in W/(m*K)
k = 250;
//Biot number for lumped parameter analysis is 0.1
Bi = 0.1;
//Characteristic dimension of a cube is (a/6) where a is the side of cube in metre
//Maximum dimension in metre
a = ((6*k)*Bi)/h;
disp("Maximum dimension in metre for lumped parameter analysis")
a
