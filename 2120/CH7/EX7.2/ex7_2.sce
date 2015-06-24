//Exa 7.2
clc;
clear;
close;
// Given data
v1 = 0.05;// in m^3
v2 = 8 * v1;// in m^3
T1 = 280;// in °C
T1 = T1 + 273;// in K
T2 = 25;// in °C
T2 = T2 + 273;// in K
p1 = 8;// in bar
C_p = 1.005;// in kJ/kgK
C_v = 0.712;// in kJ/kgK
R = C_p - C_v;// in kJ/kgK
del_phi = (R * ( log(v2/v1)) ) + (C_v * (log(T2/T1)) );// in kJ/kgK
disp(del_phi,"The change in entrophy of air during the process in kJ/kgKis");
