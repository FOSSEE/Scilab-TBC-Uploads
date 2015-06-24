// Exa 3.21                 (Miss printed as example 3.18)
clc;
clear;
close;
format('v',5)
// Given data
V_BB= 6;// in V
I_CBO =0.5;// in µA
V_BE = 0.7;// in V
R_B= 50;// in k ohm
R_E= 1;// in k ohm
bita = 75;
// V_BB - I_B*R_B - V_BE - I_E*R_E = 0 or
I_B=(V_BB-V_BE)/(R_B+(1+bita)*R_E);// in mA      (on putting I_E= (1+bita)*I_B)             (i)
I_B= round(I_B*10^3);// in µA
I_C= bita*I_B;// in µA
I_C= I_C*10^-3;// in mA
I_CQ= I_C;// in mA
disp(I_CQ,"The value of I_CQ at room temperature in mA is : ")
// Part (ii)
C= 2;// temperature coefficient in mV/°C
C= 2*10^-3;// in V/°C
T2= 20;// in °C
T1= 0;// in °C
I_CBO2= I_CBO*2^((T2-T1)/10);// in µA
V_BE2= V_BE-C*T2;// in V
// Now from eq(i), for the new value of I_B
I_B=(V_BB-V_BE2)/(R_B+(1+bita)*R_E);// in mA
I_B= I_B*10^3;// in µA
I_C= bita*I_B+(1+bita)*I_CBO2;// in µA
I_C= I_C*10^-3;// in mA
I_CQ= I_C;// in mA
disp(I_CQ,"The value of I_CQ when temperature increases by 20°C in mA is : ")




