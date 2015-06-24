// Exa 6.2
clc;
clear;
close;
format('v',6)
// Given data
del_V = 20;//change in voltage in V
del_t = 4;//change in time in µS
SR = del_V/del_t;//slew rate in V/µS
disp(SR,"The slew rate in V/µS is");
