// Exa 10.19
clc;
clear;
close;
format('v',6)
// Given ata
N1 = 1;
N2 = 1.2*N1;
phi1 = 1;
phi2 = 0.8*phi1;
Eg1BYEg2 = (N1/N2) * (phi1/phi2);
Eg1 = 1;// assumed
// The change in emf 
Eg2 = (Eg1*phi2*N2)/(phi1*N1);
Eg2 = Eg2 * 100;// in %
disp(Eg2,"The change in emf in % is");
