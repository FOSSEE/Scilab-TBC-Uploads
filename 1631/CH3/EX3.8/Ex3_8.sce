//Caption: Transmission Bandwidth
//Example 3.8 
//page no 131
//Calculate Transmission Bandwidth
//given
clc;
clear;

fm=3*10^3;
fs=8*10^3;// sampling frequncy
Ts=1/fs;
t=0.1*Ts;
BW=1/(2*t);//Bandwidth
disp("Transmission Bandwidth of PAM signal is  ");
disp("kHz",BW*10^-3,"BW>=");

