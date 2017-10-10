// Exa 1.19
clc;
clear;
close;
// Given data
Rf=68;// in kohm
R1=33;// in kohm
R2=22;// in kohm
R3=12;// in kohm
V1= 0.2;// in V
V2=-0.5;// in V
V3= 0.8;// in V
Vo= -Rf/R1*V1 + (-Rf/R2)*V2 + (-Rf/R3)*V3;// in volts
disp(Vo,"Output voltage in volts is : ")
