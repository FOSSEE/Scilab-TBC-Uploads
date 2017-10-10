clc;
clear;
A=114 //effective Richardson constant A/K^2*cm^2
e=1.6*10^-19 //in J
T=300 //in K
phi_Bn=0.82 //in eV
const=0.026 //value for kT/e in V

//Calculation
J0=A*T^2*exp(-(phi_Bn/const))

mprintf("Reverse saturation current density= %1.2e A/cm^2",J0)

