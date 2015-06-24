//Exa2.1
clc;
clear;
close;
//given data :
J=2.4; //in A/mm^2
J=2.4*10^6; //in A/m^2
n=5*10^28; //unitless
e=1.6*10^-19; // in coulomb
//Formula : J=e*n*v
v=J/(e*n);//in m/s
disp("Drift velocity is : "+string(v)+" m/s or "+string(v*10^3)+" mm/s")
