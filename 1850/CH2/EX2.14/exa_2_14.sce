// Exa 2.14
clc;
clear;
close;
// Given data
format('v',9)
V_PP= 3;// in volt
delta_t= 4;// in micro sec
// delta_V= 90% of V_PP - 10% of V_PP = (90%-10%)*V_PP
delta_V= 0.8*V_PP;
SR= delta_V/delta_t;// in V/micro sec
disp(SR,"Required slew rate in V/micro second")
