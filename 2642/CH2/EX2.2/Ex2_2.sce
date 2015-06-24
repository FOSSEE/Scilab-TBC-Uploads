// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.2

clc;clear; // clears the console and command history 

// Given data
d_in = 3 // inside diameter of iron toroid in cm
d_out = 6 // outside diameter of iron toroid in cm
N =200 // number of turns
I = 3 // current in A
flux = 0.015 // flux in Wb

// caclulations 
d = d_in+((d_out-d_in)/2) // distance in cm
l = %pi*d // mean length in cm
A = %pi*d^2/4 // area in cm^2
B =flux/(A*10^-4) // flux density in mWb/m^2
MMF = N*I // magnetomotive force in At
H = (N*I)/(l*10^-2) // magnetic field intensity in At/m

// display the result 
disp("Example 2.2 solution");
printf("\n Flux density \n B= %.6f mWb/m^2 \n", B);
printf(" \n Magnetomotive force \n MMF= %.2f At \n", MMF);
printf(" \n Magnetic field intensity \n H= %.2f At/m \n", H);
printf(" NOTE:correction in solution they took d=1.5 insted of 4.5")
