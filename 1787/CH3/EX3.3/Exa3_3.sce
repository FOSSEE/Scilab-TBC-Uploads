//Exa 3.3
clc;
clear;
close;
//given data
Emax=2.5;//maximum energy of emitted electrons in eV 
lambda=2537;//in Angstrum
EeV=12400/lambda;//in eV
disp(EeV,"The eV equivalent of the energy of incident photon : ");
phi=EeV-Emax;//in eV
disp(phi,"Work function of the cathode material is ");