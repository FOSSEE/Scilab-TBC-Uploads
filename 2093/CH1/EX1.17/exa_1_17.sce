// Exa 1.17
clc;
clear;
close;
// Given data
R1=10;// in kohm
R2=150;// in kohm
R3=10;// in kohm
R4=300;// in kohm
V1= 1;// in V
V2= 2;// in V
Vo= [(1+R4/R2)*(R3*V1/(R1+R3))-(R4/R2)*V2];
disp(Vo,"Output voltage in volts is : ")
