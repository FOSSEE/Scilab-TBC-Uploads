// Exa 3.2
clc;
clear;
close;
// Given data
T_K= '273.15+t_C';
T_R= '459.67+t_F';
// t_C= t_F or T_K-T_R= -186.52     (i)
// T_R/T_K = 1.68                                (ii)
// From eq (i) and (ii)
T_K= -186.52/(1-1.68);// temp. in kelvin in K
T_R= 1.68*T_K;// in temp. in rankine in °R
t_C= T_K-273.15;// in °C
t_F= T_R-459.67;// in °F
disp(T_K,"Temperature in kelvin is : ")
disp(T_R,"Temperature in °R is ")
disp(t_C,"Temperature in °C is ")
disp(t_F,"Temperature in °F is ")
