//Exa3.1
clc;
clear;
close;
// given data
E=2.1;//in eV
E=E*1.602*10^-19;// in J
m=9.107*10^-31;// in kg (mass of electron)
// Formula E=1/2*m*v^2
v=sqrt(2*E/m);
disp(" Velocity of electron at Fermi-level is : "+string(v)+" m/s")