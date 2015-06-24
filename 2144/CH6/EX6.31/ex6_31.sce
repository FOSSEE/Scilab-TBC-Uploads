// Exa 6.31
clc;
clear;
close;
// Given data
m1 = 3;// in kg
m2 = 2;// in kg
T1 = 10;// in degree C
T2 = 80;// In Degree C
T = ((m1*T1)+(m2*T2))/(m1+m2);// in degree C
T = T + 273;// in K
T1 = T1 + 273;// in K
T2 = T2 + 273;// in K
c_f = 4.188;
del_phi1 = m1 * c_f*log(T/T1);// in kJ/K
del_phi2 = m2 * c_f*log(T/T2);// in kJ/K
Phi = del_phi1 + del_phi2;// in kJ/K
disp(Phi,"Total change in entropy in kJ/K is")
