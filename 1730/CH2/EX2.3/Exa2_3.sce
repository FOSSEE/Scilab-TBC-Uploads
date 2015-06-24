//Exa2.3
clc;
clear;
close;
//given data :
miu_e=7.04*10^-3; //in m^2/V-s
n=5.8*10^28 ; // in /m^3
e=1.6*10^-19; // in coulomb
m=9.1*10^-31;//in kg
//(i) Relaxation time,
tau=miu_e/e*m;
disp("Relaxation time is : "+string(tau)+" second");
sigma=(n*e*miu_e);
//(ii) Resistivity of conductor,
rho=1/sigma;
disp("Resistivity of conductor is : "+string(rho)+" ohm-meter");