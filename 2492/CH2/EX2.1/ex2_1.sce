// Exa 2.1
format('v',9)
clc;
clear;
close;
// Given data
n_i = 1.5 * 10^10;// in /cc
p = n_i;// in /cc
n = n_i;// in /cc
miu_n = 1400;// in cm^2/V-s
miu_p = 450;//in cm^2/V-s
q = 1.6 * 10^-19;// in C
E = 20;// in V/cm
a= 5;// cross section area of Si bar in cm^2
sigma_n = n*q*miu_n;// in mho/cm
sigma_p = n*q*miu_p;// in mho/cm
// Electron current density 
Jn = sigma_n*E;// in A
Jn= Jn*10^6;// in µA/cm^2
disp(Jn,"Electron current density in µA/cm^2 is");
// The hole current density 
Jp = sigma_p*E;// in A/cm^2
Jp= Jp*10^6;// in µA/cm^2
disp(Jp,"The hole current density in µA/cm^2 is");
//The total current in the bar 
total = (Jn+Jp)*a;// µA/cm^2
disp(total,"The total current in the bar in µA/cm^2 is");
format('e',8)
// The resistivity of the bar 
rho = 1/(n_i*q*(miu_p+miu_n)*10^2);// in ohm-cm
disp(rho,"The resistivity of the bar in ohm-cm is");
