// Exa 2.26
clc;
clear;
close;
// Given data
T1 = 400;// in K
T2 = 300;// in K
N_V = 1.04*10^19;// in cm^-3
N1 = N_V*((T1/T2)^(3/2));// in cm^-3
KT = 0.0259*(T1/T2);// in eV
FermiLevel= 0.27;// in eV
P_O = N1*exp( (-FermiLevel)/KT );// in cm^-3
disp(P_O,"The thermal equillibrium hole concentration in cm^-3 is");
