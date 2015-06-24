// Exa 9.2
clc;
clear;
close;
format('v',5)
// Given data
E1 = 3000;// in V
E2 = 200;// in V
f = 50;// in Hz
a = 150;// in cm^2
N2 = 80;// turns
//Formula E2 = 4.44*phi_m*f*N2;
phi_m = E2/(4.44*f*N2);// in Wb
Bm = phi_m/(a*10^-4);// in Wb/m^2
disp(Bm,"The maximum flux density in Wb/m^2 is");
