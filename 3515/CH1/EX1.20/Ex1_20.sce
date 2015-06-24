// Exa 1.20
format('v',7);
clc;
clear;
close;
// Given data
Rf=100;// in kohm
R1=20;// in kohm
V1= 1.5;// in V
Vo1= V1;
Vo= -Rf/R1*Vo1;// in volts
disp(Vo,"Output voltage in volts is : ")
