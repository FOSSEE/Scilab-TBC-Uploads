// Exa 4.20
clc;
clear;
close;
// Given data
V_BE = 0.8;// in V
V_CE = 0.2;// in V
V1 = 5;// in V
R_B = 50;// in kohm
R_B= R_B*10^3;// in ohm
R_C = 3;// in K ohm
R_C = R_C * 10^3;// in ohm
bita = 100;
R_E = 2;// in kohm
R_E= R_E*10^3;// in ohm
I_B = (V1-V_BE)/(R_B+(1+bita)*R_E);// in A
disp(I_B*10^6,"The value of I_B in µA is");
V_CC = 10;// in V
I_Csat = (V_CC - V_CE - (I_B*R_E))/(R_C+R_E);//in A
disp(I_Csat*10^3,"The value of I_C(sat) in mA is");
I_Bmin = I_Csat /bita;// in A
disp(I_Bmin*10^6,"The minimum value of I_B in µA is : ");

// Note: There is calculation error to evaluate the value of I_Csat in the book, so the answer in the book is wrong
