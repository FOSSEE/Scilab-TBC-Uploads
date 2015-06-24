// Exa 1.11
clc;
clear;
close;
// Given data
format('v',7)
R_E_desh= 200;// in ohm
V_CC= 10;// in volt
V_EE= 10;// in volt
V_BE= 0.7;// in volt
R_C= 2.2;// in k ohm
R_C= R_C*10^3;// in ohm
R_E= 4.7;// in k ohm
R_E= R_E*10^3;// in ohm
Ri_1= 50;// in ohm
Ri_2= Ri_1;// in ohm
Bita_dc= 100;
Bita_ac = Bita_dc;
I_CQ = (V_EE-V_BE)/(2*R_E+ R_E_desh+Ri_1/Bita_dc);// in amp
I_E= I_CQ;// in amp
disp(I_CQ*10^3,"Value of I_CQ in mA");
V_CEQ= V_CC + V_BE - I_CQ*R_C;// in volt
disp(V_CEQ,"Value of V_CEQ in volt");
re_desh= (26*10^-3)/I_E;// in ohm
A_d = R_C/(re_desh+R_E_desh);
disp(A_d,"Voltage gain");
R_in1= 2*Bita_ac*(re_desh+R_E_desh);// in ohm
disp(R_in1*10^-3,"Input resistance in k ohm");
R_out1= R_C;// in ohm
disp(R_out1*10^-3,"Output resistance in k ohm");
