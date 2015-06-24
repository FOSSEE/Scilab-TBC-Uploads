// Exa 6.3
clc;
clear;
close;
format('v',6)
// Given data
del_V = 0.75;//chagne in voltage in V
del_t = 50;//change in time in ns
// The slew rate 
SR = del_V/(del_t*10^-3);// in µs
disp(SR,"The slew rate in V/µ-sec is");
