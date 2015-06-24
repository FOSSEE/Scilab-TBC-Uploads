// Exa 5.28
format('v',6)
clc;
clear;
close;
// Given data
I_Don = 5*10^-3;// in A
V_GSon = 6;// in V
V_GSth = 3;// in V
k = I_Don/(V_GSon-V_GSth)^2;// in A/V^2 
R2 = 6.8;// in M ohm
R1 = 10;// in M ohm
R_S= 750;// in ohm
R_D= 2.2*10^3;// in ohm
V_DD = 24;// in V
R_S = 750;// in  ohm
// Applying KVL for input circuit
V_G= R2*V_DD/(R1+R2);// in V
I_D= poly(0,'I_D');
V_GS= V_G-I_D*R_S;// in V
I_D= I_D-k*(V_GS-V_GSth)^2;
I_D= roots(I_D);// in A
I_D= I_D(2);// in A
I_DQ= I_D;// in A
V_GS= V_G-I_D*R_S;// in V
V_GSQ= V_GS;// in V
V_DSQ= V_DD-I_DQ*(R_D+R_S);// in V
I_D= I_D*10^3;// in mA
disp(I_D,"The value of I_D in mA is : ")
disp(V_GSQ,"The value of V_GSQ in volts is : ")
disp(V_DSQ,"The value of V_DSQ in volts is : ")

