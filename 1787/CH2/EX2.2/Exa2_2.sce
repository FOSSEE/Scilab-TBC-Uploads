//Exa 2.2
clc;
clear;
close;
//given data
J=2.4;//in A/mm^2
J=J*10^6;//in A/m^2
n=5*10^28;//electrons/m^3
e=1.6*10^-19;//constant
//Formula : J=e*n*v
v=J/(e*n);//in m/s
disp(v*10^3,"Velocity of electron at fermi level in mm/s : ");