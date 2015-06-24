clc
//to calculate voltage
A=6.50*10^-4 //area in m^2
Q=2*10^-10 //charge in C
d=4*10^-3 //plate separation in m
epsilon0=8.854*10^-12
epsilonr=3.5 //dielectric constant
V=Q*d/(epsilon0*epsilonr*A)
disp("the resultant voltage across the capacitor is V="+string(V)+"volt")
