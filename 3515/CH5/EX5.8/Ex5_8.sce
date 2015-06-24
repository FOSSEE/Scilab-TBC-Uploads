// Exa 5.8
format('v',7);
clc;
clear;
close;
// Given data
Ao= 10^4;
Afo= 50;
omega_H= 2*%pi*100;// in rad/s
// Formula Afo= Ao/(1+Ao*Bita)
Bita= 1/Afo-1/Ao;
omega_f_H= omega_H*(1+Ao*Bita);
disp("Closed loop bandwidth in rad/s is :  ")
disp(string(omega_f_H)+" or 2*%pi*20*10^3");
disp("So the bandwidth increase form 100 Hz to 20 kHz on the gain decreases form 104 to 50")

