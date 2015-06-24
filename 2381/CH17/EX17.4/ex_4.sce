//Example 4 // electric and magnetic field
clc;
clear;
close;
//given data :
r=2;// in m
mu0=4*%pi*10^-7;
epsilon0=8.85*10^-12;
EbyH=sqrt(mu0/epsilon0);
EH=1000/(4*r^2*%pi^2);// in W/m^2
E=sqrt(EH*EbyH);
H=(EH/E);
disp(E,"Intensities of electric,E(V/m) = ")
disp(H,"Magnetic field of radiation,H(Amp-turn/m) = ")
