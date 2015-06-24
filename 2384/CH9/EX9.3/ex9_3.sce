// Exa 9.3
clc;
clear;
close;
format('v',5)
// Given data
N1 = 500;
N2 = 40;
E1 = 3000;// in V
f = 50;// in Hz
K = N2/N1;
Rating = 25*10^3;// in VA
I1 = Rating/E1;// in A
disp(I1,"The primary full load current in A is");
I2 = I1/K;// in A
disp(I2,"The secondary full load current in A is");
// K = E2/E1;
E2 = K*E1;// in V
disp(E2,"The secondary emf in V is");
// e.m.f equation of the transformer, E1 = 4.44*phi_m*f*N1;
phi_m = E1/(4.44*f*N1);// in Wb
phi_m = phi_m*10^3;// in mWb
disp(phi_m,"The maximum core flux in mWb is");
