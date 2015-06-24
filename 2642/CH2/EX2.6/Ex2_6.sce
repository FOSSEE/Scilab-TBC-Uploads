// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.6

clc;clear; // clears the console and command history 

// Given data
N = 200      // number of turns 
d_in = 7    // inner diameter of wooden toroidal coil in cm
d_out = 10  // outer diameter  of wooden toroidal coil in cm
A = 0.005  // cross sectional area m^2
I = 5      // current through coil in A
R = d_out-d_in 
myu_0 = 4*%pi*10^-7

// caclulations 
l = 2*%pi*R*10^-2  // mean circumference length in m
H = N*I/l          // magnetic field intensity in At/m
B = myu_0*H        // flux density in Wb/m^2
flux = B*A        // flux in Wb

// display the result 
disp("Example 2.6 solution");
printf(" \n Magnetic field intensity  \n H= %.0f At/m \n", H);
printf(" \n Flux density \n B= %.2e Wb/m^2 \n", B);
printf(" \n Flux \n flux= %.1e Wb \n", flux);
