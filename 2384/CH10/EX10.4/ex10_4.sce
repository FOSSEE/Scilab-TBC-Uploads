// Exa 10.4
clc;
clear;
close;
format('v',6)
// Given data
Eg1 = 100;// in V
phi1 = 20;// in mWb
phi1 = phi1 * 10^-3;// in Wb
N1 = 800;// in rpm
N2 = 1000;// in rpm
// Eg1/Eg2 = (phi1/phi2) * (N1/N2) but phi1 = phi2
Eg2 = (Eg1*N2)/N1;// in V
disp(Eg2,"Part (i) : The generated emf in V is");
phi2 = 24;// in mWb
phi2 = phi2 * 10^-3;// in Wb
N2 = 900;// in rpm
// Eg1/Eg2 = (phi1/phi2) * (N1/N2) ;
Eg2 = (Eg1*N2*phi2)/(N1*phi1);// in V
disp(Eg2,"Part (ii) : The generated emf in V is");
