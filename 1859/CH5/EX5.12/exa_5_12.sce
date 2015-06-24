// Exa 5.12
clc;
clear;
close;
// Given data
f=2.5;// in kHz
f=f*10^3;// in Hz
// Part (i) when
t=0.1;// in sec
count= f*t;
disp(count,"When GATE ENABLE time is 0.1 sec then the counter will count or display")
// Part (ii) when
t=1;// in sec
count= f*t;
disp(count,"When GATE ENABLE time is 1 sec then the counter will count or display")
// Part (iii) when
t=10;// in sec
count= f*t;
disp(count,"When GATE ENABLE time is 10 sec then the counter will count")
