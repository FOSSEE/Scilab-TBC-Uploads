// Exa 3.3
clc;
clear;
close;
format('v',8)
// Given data
f = 60;// in Hz
Im = 120;// in A
t = 1/360;// in sec
omega = 2*%pi*f;// in rad/sec
i = Im*sin(omega*t);// in A
disp(i,"The value of current after 1/360 sec in A is");
i = 96;// in A
// i = Im*sind(omega*t);
t = (asin(i/Im))/omega;// in sec
disp(t,"The time taken to reach 96 A for the first time in sec is");
