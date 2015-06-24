clc
clear
//Input data
N=5*10^28//Number of atoms present per m^3
a=2*10^-40//polarizability in F.m^2
eo=8.854*10^-12//permittivity of free space in F/m

//Calculations
E=1/(1-((N*a)/(3*eo)))//Ratio of the internal field to the applied field 

//Output
printf('Ratio of the internal field to the applied field is %3.4f',E)
