//Exa2.7
clc;
clear;
close;
format('v',11);
//given data :
E=100;//in V/m
rho=1.5*10^-8; //in ohm-meter
//since sigma=1/roh
sigma=1/rho;
n=6*10^28 ; //unit less
e=1.601*10^-19; //in C
m=9.107*10^-31;//in kg
// Relaxation time
toh=(sigma*m)/(n*e^2);
disp("(i) Relaxation time of electrons is : "+string(toh)+" seconds");
//Drift velocity
v=(e*E*toh)/m;
disp("(ii) Drift velocity is : "+string(v)+" m/s");
