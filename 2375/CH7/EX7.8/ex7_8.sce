// Exa 7.8
clc;
clear;
close;
format('v',5)
// Given data
I_D = 12*10^-3;// in A
V_DS = 6;// in V
V_P = 3;// in V
R_SS= 1*10^3;// in ohm
I_DSS = 20*10^-3;// in A
V_GS= poly(0,'V_GS');
V_GS= I_D-I_DSS*(1-V_GS/V_P)^2;
V_GS= roots(V_GS);// in V
V_GS= V_GS(1);// in V
disp(V_GS,"The value of V_GS in volts is : ")
// Applying KVL on it's input section, V_G= V_GS+I_D*R_SS+V_SS or
// I_D*RSS+V_SS= V_G-V_GS   (i)
// V_DS+I_D*R_SS+V_SS= 0      (ii)
// From eq (i) and (ii)
V_G= V_GS-V_DS;// in V
disp(V_G,"The value of V_G in volts is : ")
V_SS= V_G-V_GS-I_D*R_SS;// in V
disp(V_SS,"The value of V_SS in V is : ")
