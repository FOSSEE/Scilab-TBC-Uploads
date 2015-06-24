// Exa 5.5
format('v',6)
clc;
clear;
close;
// Given data
I_D= '0.3*(V_GS-V_P)^2';// given expression
V_DD= 30;// in V
V_P= 4;// in V
R_GS = 1.2*10^6;// in Ω
R_G = 1.2*10^6;// in Ω
Req= R_GS/(R_GS+R_G);// in Ω
R_D= 15;// in Ω
// V_DS= V_DD-I_D*R_D (applying KVL to drain circuit)
// V_GS= Req*V_DS= (V_DD-I_D*R_D)*Req
// from given expression
//I_D^2*(R_D*Req)^2 - I_D*(2*R_D*Req*(V_DD*Req-V_P)+1/0.3 + (V_DD*Req-V_P)^2)
A= (R_D*Req)^2;// assumed
B= -(2*R_D*Req*(V_DD*Req-V_P)+1/0.3);// assumed
C= (V_DD*Req-V_P)^2;// assumed
// Evaluating the value of I_D
I_D= [A B C]
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
I_DSQ= I_D;// in mA
disp(I_DSQ,"The value of I_DSQ in mA is : ")
V_GS= (V_DD-I_D*R_D);// in V
disp(V_GS,"The value of V_GS in volts is : ")
V_DS= Req*V_GS;// in V
disp(V_DS,"The value of V_DS in volts is : ")
