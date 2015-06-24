// Exa 1.9
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
I_CQ = (V_EE-V_BE)/(2*R_E+Ri_1/Bita_dc);// in amp
I_E= I_CQ;// in amp
V_CEQ= V_CC + V_BE - I_CQ*R_C;// in volt
re_desh= (26*10^-3)/I_E;// in ohm
A_d = R_C/re_desh;
R_in1= 2*Bita_ac*re_desh;// in ohm
R_out1= R_C;// in ohm
disp(I_CQ*10^3,"Quiescent collector current in mA");
disp(V_CEQ,"Quiescent collector-emitter voltage in volt");
disp(R_in1*10^-3,"Input resistance in k ohm");
disp(R_out1*10^-3,"Output resistance in k ohm");
// However, the voltage gain of dual input , unbalaned output differential amplifier is half the gain of the dual  input, balanced output differential amplifier as
disp(A_d/2,"Voltage gain")

// (ii)
disp("Because of same component values and same biasing arrangement the values of I_CQ,V_CEQ,R_in,R_out and A_d are the same as those for dual input balanced output configuration. Thus");
disp(I_CQ*10^3,"Quiescent collector current in mA");
disp(V_CEQ,"Quiescent collector-emitter voltage in volt");
disp(R_in1*10^-3,"Input resistance in k ohm");
disp(R_out1*10^-3,"Output resistance in k ohm");
disp(A_d,"Voltage gain")
