// Exa 10.1
clc;
clear;
close;
// Given data
V_CC = 15;// in V
V_sat = V_CC;// in V
R1 = 120;// in ohm
R2 = 51;// in k ohm
R2 = R2 * 10^3;// in ohm
V_in = 1;// in V
V_UT = (V_sat*R1)/(R1+R2);//in V
disp(V_UT*10^3,"When supply voltage is +15V then threshold voltage in mV is");
V_ULT = ((-V_sat)*R1)/(R1+R2);// in V
V_ULT = V_ULT;// in V
disp(V_ULT*10^3,"When supply voltage is -15V then threshold voltage in mV is");
