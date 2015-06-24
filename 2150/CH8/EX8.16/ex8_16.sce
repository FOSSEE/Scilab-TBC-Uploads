// Exa 8.16
clc;
clear;
close;
// Given data
R_f = 470;// in kΩ
R1 = 4.3;// in kΩ
R2 = 33;// in kΩ
R3 = R2;// in kΩ
A1 = (1+R_f/R1);
A2 = -(R_f/R2);
A3 = -(R_f/R3);
A = A1*A2*A3;
V_i = 80;// in µV
V_i= 80*10^-6;// in V
V_o = A*V_i;
disp(V_o,"The output voltage in V is")
