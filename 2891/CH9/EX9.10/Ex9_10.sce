//Exa 9.10
clc;
clear;
close;
// given :
fc=1.5 // critical frequency in MHz
fc=1.5*10^(6) // critical frequency in Hz
// formula : fc=9*sqrt(Nmax)
Nmax=(fc)^2/81 // electron density in electrons/m^3
disp(Nmax,"electron density in electrons/m^3")
