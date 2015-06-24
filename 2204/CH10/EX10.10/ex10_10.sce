// Exa 10.10
clc;
clear;
close;
// Given data
R1 = 86;// in k ohm
V_sat = 15;// in V
R2 = 100;// in k ohm
V_UT = (R1/(R1+R2))*V_sat;// in V
disp(V_UT,"The value of V_UT in V is ");
V_LT = (R1/(R1+R2))*(-V_sat);// in V
disp(V_LT,"The value of V_LT in V is");
R_F = 100;// in k ohm
R_F= R_F*10^3;// in ohm
C = 0.1;// in µF
C = C * 10^-6;// in F
f_o = 1/(2*R_F*C*log( (V_sat-V_LT)/(V_sat-V_UT) ));// in Hz
disp(f_o,"Frequency of oscillation in Hz is");
