// Exa 7.6
clc;
clear;
close;
format('v',6)
// Given data
V_DD = 40;// in V
Vt = 5;// in V
R_D= 820;// in ohm
I_Don = 3;// in mA
I_Don = I_Don * 10^-3;// in A
V_GSon = 10;// in V 
K = I_Don/( (V_GSon-Vt)^2 );// in A/V^2
R2 = 18;// in Mohm
R2 = R2 * 10^6;// in ohm
R1 = 22;// in Mohm
R1 = R1 * 10^6;// in ohm
R_S = 3*10^3;// in ohm
I_D= poly(0,'I_D');
V_G= R2/(R1+R2)*V_DD;
V_GS= V_G-I_D*R_D;// in V
I_D= I_D-K*(V_GS-Vt)^2;// in A
I_D= roots(I_D);// inA
I_D= I_D(2);// in A
I_D= I_D*10^3;// in mA
disp(I_D,"The value of I_D in mA is : ")
I_D= I_D*10^-3;// in A
V_GSQ= V_G-I_D*R_D;// in V
disp(V_GSQ,"The value of V_GSQ in volts is : ")
V_DSQ= V_DD-I_D*(R_D+R_S);// in V
disp(V_DSQ,"The value of V_DSQ in volts is : ")
