//Exa5
clc;
clear;
close;
//given data :
rho=1.54*10^-8; //in ohm-meter
//since sigma=1/roh
sigma=1/rho;
n=5.8*10^28 ; //unit less
e=1.6*10^-19; //in C (electron charge)
m=9.1*10^-31;//in kg (mass of electron)
//(i) Relaxation time
toh=(sigma*m)/(n*e^2);
disp("(i) Relaxation time of electrons is : "+string(toh)+" seconds");
//(ii) Mobility of electrons,
miu_e=(e*toh)/m;
disp("(ii) Mobility of electrons is : "+string(miu_e)+" m^2/V-s");
