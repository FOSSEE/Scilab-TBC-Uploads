//Exa 2.7
clc;
clear;
close;
//given data
Ef=5.5;//in eV
MUe=7.04*10^-3;//in m^2/V-s
n=5.8*10^28;//in m^-3
e=1.6*10^-19;//constant
m=9.1*10^-31;//in Kg
//part (i)
tau=MUe*m/e;//in sec
disp(tau,"Relaxation time in sec : ");
rho=1/(n*e*MUe);//in ohm-m
disp(rho,"Resistivity of conductor in ohm-m : ")
vF=sqrt(2*Ef*1.6*10^-19/m);
disp(vF,"velocity of electron with fermi energy in m/s : ");