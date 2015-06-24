// Scilab Code Ex12.2 : Page-603 (2011)
clc; clear;
n = 500;....// Number of turns wound per metre on the solenoid
i = 0.5;....// Current through the solenoid, A
V = 1e-03;....// Volume of iron rod, per metre cube
mu_r = 1200;    // Relative permeability of the iron
H = n*i;    // Magnetic intensity inside solenoid, ampere-turn per metre
// As B = mu_o * (H + I) => I = B/mu_o -  H 
// But B = mu_o * mu_r * H and solving for I 
I = (mu_r - 1) * H;
printf("\nThe Intensity of magnetisation inside the solenoid, I = %5.3e A/m", I);
M = I * V;    // Magnetic moment of the rod, ampere metre square 
printf("\nThe magnetic moment of the rod, M = %3d ampere metre square", M)

//Result
// The Intensity of magnetisation inside the solenoid, I = 2.998e+005 A/m
// The magnetic moment of the rod, M = 299 ampere metre square 
