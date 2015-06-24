//Exa4.8
clc;
clear;
close;
//given data
T=300;//in Kelvin
ND=8*10^14;//in cm^-3
NA=8*10^14;//in cm^-3
ni=2*10^13;//in cm^-3
k=8.61*10^-5;//in eV/K
Vo=k*T*log(NA*ND/ni^2);//in Volts
disp(Vo,"Contact potential in volts : ");