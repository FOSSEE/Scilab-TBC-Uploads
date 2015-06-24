// Exa 3.13
// GIven data
clc;
clear;
close;
del_n = 10^15;// in /cm^3
Torque_p = 10*10^-6;// in sec
R_G = del_n/Torque_p;// in electron hole pairs/sec/cm^3
disp("The rate of generation of minority carrier is : "+string(R_G)+" electron hole pairs/sec/cm^3");
