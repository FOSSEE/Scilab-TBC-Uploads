// Exa 1.9
clc;
clear;
close;
// Given data
r= 20;// in Ω
R_B= 15;// in Ω
V_K1= 0.2;// in V
V_K2= 0.6;// in V
V= 100;// in V
R1= 10*10^3;// in Ω
// Vo= V_K1+r*I1 = V_K2+R_B*I2
// Resulting current I= I1+I2 or
// (V-Vo)/(R1) = (Vo-V_K1)/r + (Vo-V_K2)/R_B
Vo= (r*R_B*V+R1*R_B*V_K1+R1*r*V_K2)/(R1*R_B+R1*r+r*R_B);// in V
I1= (Vo-V_K1)/r;// in A
I2= (V_K2-Vo)/R_B;// in A
disp(I1*10^3,"The value of I1 in mA is : ")
disp(I2*10^3,"The value of I2 in mA is : ")
