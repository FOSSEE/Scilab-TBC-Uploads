// Exa 9.4
clc;
clear;
close;
// Given data
Rs = 1;// in k ohm
Rs = Rs * 10^3;// in ohm
omega_z = 10;// in rad/sec
omega_p = 100;// in rad/sec
//omega_z = 1/(Rs*Cs);
Cs = 1/(Rs*omega_z);// in F
disp(Cs*10^6,"The value of Cs in µF is");
//omega_p = (g_m + (1/Rs))/Cs;
g_m = omega_p*Cs-1/Rs;// in A/V
g_m= g_m*10^3;// in mA/V
disp(g_m,"The value of g_m in mA/V is")

// Note: The unit of g_m in the book is wrong. It will be in mA/V not in nA/V.
