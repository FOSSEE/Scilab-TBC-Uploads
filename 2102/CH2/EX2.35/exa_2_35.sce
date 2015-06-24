// Exa 2.35
clc;
clear;
close;
// Given data
N_A= 4.4*10^22/10^8;// in /m^3
N_D= 10^3*N_A;// in /m^3
ni= 2.5*10^13;// /cm^3
Vt= 26;// in mV
Vt= Vt*10^-3;// in V
Vj= Vt*log(N_A*N_D/ni^2);// in V
disp(Vj,"The junction potential in volts is : ")
