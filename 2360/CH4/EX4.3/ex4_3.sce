// Exa 4.3
format('v',7);clc;clear;close;
// Given data
// When Vi=100 mV
Vi = 100;// in mV
V_R = 100;// in mV
t1 = 83.33;// in ms
t2 = (Vi/V_R)*t1;// in ms
disp(t2,"When Vi=100 mV, the value of t2 in ms is");
// When Vi=200 mV
Vi = 200;// in mV
t2 = (Vi/V_R)*t1;// in ms
disp(t2,"When Vi=200 mV, the value of t2 in ms is");
