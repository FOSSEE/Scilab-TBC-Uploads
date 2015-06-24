// Exa 8.8
clc;
clear;
close;
//given data
V_UT= 5;// in V
V_LT= -5;// in V
V_sat= 10;// in V (Assume)
// V_UT= (R1/(R1+R2))*V_sat = 5
// V_LT= (-R1/(R1+R2))*V_sat = -5
// 10*R1/(R+R2)= 5
V_hy= V_UT-V_LT;// in volt
disp(V_hy,"Hysteresis voltage in volt")
