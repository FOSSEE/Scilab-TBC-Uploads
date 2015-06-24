//Ex 4.7
clc;clear;close;
format('v',5);
//v(t)=20*sin(6.28*10^6*t+10*sin(6.28*10^3*t));
//Comparing with VPM(t)=A*sin(omega_c*t+mp*sin(omega_m*t))
A=20;
omega_c=6.28*10^6;//rad
omega_m=6.28*10^3;//rad
fc=omega_c/2/%pi/10^6;//MHz
fm=omega_m/2/%pi/10^3;//kHz
mp=10;//modulation index
delta_theta=mp;//radians
disp(fc,"(a) Carrier freuency(MHz)");
disp(fm,"(b) Modulating freuency(kHz)");
disp(mp,"(c) Modulation index(mp)");
disp(delta_theta,"(d) Peak phase deviation(radians)");
