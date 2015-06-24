// Exa 2.21.13
clc;
clear;
close;
// Given data
del_n = 10^15;// in cm^3
Torque_p = 10 * 10^-6;// in sec
R_g = del_n/Torque_p;// in hole pairs/sec/cm^3
disp(R_g,"The rate of generation of minority carrier in electron hole pairs/sec/cm^3 is ");
