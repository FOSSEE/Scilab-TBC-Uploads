clc;
clear;
ni=1.5*10^10 //in cm^-3
Nd=5*10^16 //doping density in cm^-3
V=0.55 //in V
Const=0.026 //constant for kT/e in V

//Calculation 
Pn0=ni^2/Nd //in cm^-3
Pn=Pn0*exp(V/Const)

mprintf("minority carrier concentration= %1.2e cm^-3",Pn)
