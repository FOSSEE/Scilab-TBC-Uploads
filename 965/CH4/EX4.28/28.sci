clc;
clear all;
disp("Depth and Temperature")
a=0.044;//m^2/h
n=1400*60;// h^-1
theta=2/100;

x=-((a/(3.1416*n))^0.5)*log (theta);
disp("mm",x*1000,"depth x =")
