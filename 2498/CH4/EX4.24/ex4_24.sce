// Exa 4.24
format('v',7)
clc;
clear;
close;
// Given data
S = 3;
Beta = 100;
I_C = 2;// in mA
I_C = I_C * 10^-3;// in A
R_E = 990;// in ohm
V_CC = 24;// in V
V_BE= 0.65;// in V
I_B = I_C/Beta;// in A
I_E= I_B+I_C;// in A
// S = ((Beta+1)*(Rth+R_E))/(Rth+(R_E*(1+Beta))), where Rth= R1*R2/(R1+R2)
Rth = ((R_E*Beta) - (S*R_E) - (S*R_E*Beta) + R_E)/(S-Beta-1);// in ohm
Vth= I_B*Rth+V_BE+I_E*R_E;// in V
// Vth= V_CC*R2/(R1+R2) or 
R1= V_CC*Rth/Vth;// in ohm
R1= R1*10^-3;// in k ohm
R2= Vth*R1/(V_CC-Vth);// in k ohm
disp(R1,"The value of R1 in k ohm is : ");
disp(R2,"The value of R2 in k ohm is : ")
