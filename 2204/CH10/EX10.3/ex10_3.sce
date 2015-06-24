// Exa 10.3
clc;
clear;
close;
// Given data
V_P = 5;// in V
V_LT = -1.5;// in V
V_H = 2;// in V
f = 1;// in kHz
f = f * 10^3;// in Hz
V_UT = V_H-V_LT;// in V
V_m = V_P/2;// in V
// Formula V_LT= V_m*sind(theta)
theta= asind(-V_LT/V_m);
T = 1/f;// in sec
theta1 = theta+180;// in degree
T1 = (T*theta1)/360;// in sec
T2 = T-T1;// in sec
disp(T1*10^3,"The value of T1 in ms is : ")
disp(T2*10^3,"The value of T2 in ms is : ")
