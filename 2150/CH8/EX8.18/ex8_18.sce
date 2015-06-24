// Exa 8.18
clc;
clear;
close;
// Given data
R4 = 300;// in kΩ
R2 = 150;// in kΩ
R3 = 10;// in kΩ
R1 = 10;// in kΩ
V1 = 1;// in V
V2 = 2;// in V
V_o = ( (1+(R4/R2))*((R3/(R1+R3))*V1)-((R4/R2)*V2) );// in V
disp(V_o,"The output voltage in V is");
