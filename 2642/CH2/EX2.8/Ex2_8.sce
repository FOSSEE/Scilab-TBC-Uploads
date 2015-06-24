// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.8

clc;clear; // clears the console and command history 

// Given data
N = 450       // number of turns wound on left side of limb
A = 4         // cross sectional area in m^2
I = 5        // current through coil in A
fulx = 3     // flux in right limb Wb
myu_r = 500  // relative permiability magnetic material
l_1 = 0.12
l_2 = 0.24
phi2 = 3

// caclulations 
// we have relation 
// phi1*rm1 = phi2*rm2 
// phi1*l_1/uA = pi2*l_2/uA
phi1 = phi2*l_2/l_1           // flux on left side in Wb
flux = phi1+phi2              // total flux in Wb
B_1 = flux/A                  // flux density in the left limb
H_1 = B_1/(4*%pi*10^-7*myu_r) // magnetic flux in At/m
MMF_1 = H_1*l_2               // magnetomotive force in At
B_2 = phi2/A                  // flux density in the right limb
H_2 = B_2/(4*%pi*10^-7*myu_r) // magnetic flux in At/m
MMF_2 = H_2*l_2               // magnetomotive force in At
MMF_t = MMF_1+MMF_2           // total magnetomotive force in At
I = MMF_t/N                   // current in A

// display the result 
disp("Example 2.8 solution");
printf(" \n Current\n I= %.2f A \n", I);
