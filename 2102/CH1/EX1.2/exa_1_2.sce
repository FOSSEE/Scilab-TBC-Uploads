// Exa 1.2
clc;
clear;
close;
// Given data
format('v',13)
I=0.5;// in A
rho= 7.4;// in Ω/1000 ft
rho= rho/(3.05*10^4);// in Ω/cm
sigma= 1/rho;//in cm/Ω
disp(sigma,"Conductivity in Ω/cm is : ")

// Part (ii)
n= 6.5*10^28;// in per meter cube
q= 1.6*10^-19;// in C
// Formula sigma= n*q*miu_n
miu_n= sigma/(n*q);// in cm^2/Vs
disp(miu_n,"Mobility in cm^2/Vs is : ")

// Part (iii)
D= 2.5*10^-3;// in m
A= %pi*D^2/4;// in m^2
v_d= I/(n*q*A);// in m/s
disp(v_d,"Drift velocity in m/s is : ")
