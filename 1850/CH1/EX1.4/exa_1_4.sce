// Exa 1.4
clc;
clear;
close;
// Given data
format('v',7)
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
// Part (a)
I_CQ = (V_EE-V_BE)/(2*R_E+Ri_1/Bita_dc);// in amp
I_E= I_CQ;// in amp
disp(I_CQ*10^3,"Value of I_CQ in mA");
V_CEQ= V_CC + V_BE - I_CQ*R_C;// in volt
disp(V_CEQ,"Value of V_CEQ in volt");

// Part(b)
re_desh= (26*10^-3)/I_E;// in ohm
// A_d= V_out/V_ind = R_C/re_desh
A_d = R_C/re_desh;
disp(A_d,"Voltage gain ");

// Part(c)
// R_in1= R_in2= 2*Bita_ac*re_desh
R_in1= 2*Bita_ac*re_desh;// in ohm
disp(R_in1*10^-3,"Input resistance in k ohm");

// Part(d)
// R_out1= R_out2= R_C
R_out1= R_C;// in ohm
disp(R_out1*10^-3,"Output resistance in k ohm");


