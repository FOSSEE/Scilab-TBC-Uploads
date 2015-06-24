// Exa 1.2
clc;
clear;
close;
// Given data
format('v',7)
V_CC= 10;// in volt
V_EE= 10;// in volt
V_BE=0.7// in volt
I_C=0.5;// in mA
I_C=I_C*10^-3;// in amp
R_C= 10;// in k ohm
R_C= R_C*10^3;// in ohm
R_E= 9.3;// in k ohm
R_E= R_E*10^3;// in ohm
I_E= (V_EE-V_BE)/(2*R_E);// in amp
I_CQ= I_E;// in amp
disp(I_CQ*10^3,"Quiescent collector current in mA");
V_CEQ= V_CC+V_BE-I_C*R_C;// in volt
disp(V_CEQ,"Quiescent collector emitter voltage in volt");
