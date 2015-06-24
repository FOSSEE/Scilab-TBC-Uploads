// Exa 10.6
clc;
clear;
close;
// Given data
V_sat = 12;// in V
R1 = 1;// in k ohm
R2 = 3;// in k ohm
V_LT = ((-V_sat)*R1)/R2;// in V
disp(V_LT,"The value of V_LT in V is");
V_UT = (-(-V_sat) * R1)/R2;// in V
disp(V_UT,"The value of V_UT in V is");
V_H = (R1/R2)*(V_sat - (-V_sat));// in V
disp(V_H,"The value of V_H in V is");
