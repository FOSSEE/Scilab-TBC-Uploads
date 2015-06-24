//Exa3.2
clc;
clear;
close;
// given data
E=5.5;// in eV; (Fermi energy)
E=E*1.6*10^-19;// in J 
miu_e=7.04*10^-3; //in m^2/V-s  (Mobility of electrons)
n=5.8*10^28 ; // in /m^3   (Number of conduction electrons/m^3)
e=1.6*10^-19; // in coulomb
m=9.1*10^-31;//in kg
//(i) Relaxation time,
tau=miu_e/e*m;
disp("(i) Relaxation time is : "+string(tau)+" second");
sigma=(n*e*miu_e);
//(ii) Resistivity of conductor,
rho=1/sigma;
disp("(ii) Resistivity of conductor is : "+string(rho)+" ohm-meter");
// (iii) Let Velocity of electrons with fermi energy = v
v=sqrt(2*E/m);
disp("(iii) Velocity of electron with Fermi-level is : "+string(v)+" m/s");

