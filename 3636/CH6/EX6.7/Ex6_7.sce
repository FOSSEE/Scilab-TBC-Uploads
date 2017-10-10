clc;
clear;
ni=1.5*10^10 //in cm^-3
Nd=1*10^16 //n-type doping in cm^-3
V=0.6 //forward bias current in V
e=1.6*10^-19 //in eV
Const=0.0259 //constant for kT/e in V

//Calculation
Pn0=ni^2/Nd //in cm^-3
Pn=Pn0*exp(V/Const)


mprintf("Minority carrier hole concentration= %1.2e cm^-3",Pn)
