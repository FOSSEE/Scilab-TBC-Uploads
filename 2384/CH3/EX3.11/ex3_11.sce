// Exa 3.11
clc;
clear;
close;
format('v',7)
// Given data
Im = 15;// in A
f = 60;// in Hz
omega = 2*%pi * f;// in rad/sec
t = 1/200;// in sec
i = Im*sin(omega*t);// in A
disp(i,"The value of current after 1/200 sec in A is");
i = 10;// in A
// i = Im*sind(omega*t);
t = (asin(i/Im))/omega;// in sec
t = t * 10^3;// in ms
disp(t,"The time to reach 10 A in ms is");
Iav = Im*0.637;// in A
disp(Iav,"The average value in A is");
