// Exa 1.10
clc;
clear;
close;
// Given data
format('v',7)
V_CC= 9;// in volt
V_EE= 9;// in volt
V_BE= 0.7;// in volt (Assuming value)
R_C= 47;// in k ohm
R_C= R_C*10^3;// in ohm
R_E= 43;// in k ohm
R_E= R_E*10^3;// in ohm
Ri_1= 20;// in ohm
Ri_2= Ri_1;// in ohm
v_in1= 2.5;// in mv
v_in1=v_in1*10^-3;// in volt
Bita_1= 75;
Bita_2= Bita_1;
I_CQ = (V_EE-V_BE)/(2*R_E+Ri_1/Bita_1);// in amp
I_E= I_CQ;// in amp
V_CEQ= V_CC + V_BE - I_CQ*R_C;// in volt
re_desh= (26*10^-3)/I_E;// in ohm
// However, voltage gain of single-input, unbalanced-output differential amplifier is given by so
A_d = R_C/(2*re_desh);
v_out= A_d*v_in1;// in volt
disp(v_out,"Output voltage in volt")

