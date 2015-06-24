// Exa 5.26
format('v',6)
clc;
clear;
close;
// Given data
V_T = 1;// in V
k = 0.5;// in mA/V^2
R2 = 40;// in k ohm
R1 = 60;// in k ohm
R_S= 1;// in k ohm
R_D= 2;// in k ohm
V_DD = 5;// in V
V_G = (R2/(R2+R1))*V_DD;// in V
I_D= poly(0,'I_D');
V_GS= V_G-I_D*R_S;// in V
// Evaluation the value of I_D by using polynomial method,
I_D= I_D-k*(V_GS-V_T)^2;
I_D= roots(I_D);// in mA
// For I_D(1), V_DS will be negative , so discarding it
I_D= I_D(2);// in mA
// The value of V_GS,
V_GS= V_G-I_D*R_S;// in V
// The value of V_DS,
V_DS= V_DD-I_D*(R_D+R_S);// in V
disp(I_D,"The value of I_D in mA is : ")
disp(V_GS,"The value of V_GS in volts is : ")
disp(V_DS,"The value of V_DS in volts is : ")
