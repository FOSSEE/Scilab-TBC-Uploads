//Exa2.6
clc;
clear;
close;
//given data :
rho=1.7*10^-8; //in ohm-meter
//since sigma=1/roh
sigma=1/rho;
n=8.5*10^28 ; //unit less
e=1.6*10^-19; //in C (electron charge)
m=9.1*10^-31;//in kg
// Relaxation time
toh=(sigma*m)/(n*e^2);
disp(" Relaxation time of electrons is : "+string(toh)+" seconds");
