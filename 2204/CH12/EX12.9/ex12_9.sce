// Exa 12.9
clc;
clear;
close;
// Given data
disp("Part (i)")
V_i = 100;// in mV
V_R = 100;// in mV
t1 = 83.33;// in ms
t2 = (V_i/V_R)*t1;// in ms
disp(t2,"The value of t2 in ms is");
disp("Part (ii)")
Vi = 200;// in mV
t_2 = (Vi/V_R)*t1;// in ms
disp(t_2,"The value of t_2 in ms is");
