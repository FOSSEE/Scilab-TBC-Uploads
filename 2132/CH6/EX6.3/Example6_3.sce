//Example 6.3
clc;
clear;
close;
format('v',5);
//Given data :
g=9.81;//constant
h=102;//mm
H=105;//mm
Cv=sqrt(2*g*h)/sqrt(2*g*H);
disp(Cv,"Coefficient of velocity : ");
