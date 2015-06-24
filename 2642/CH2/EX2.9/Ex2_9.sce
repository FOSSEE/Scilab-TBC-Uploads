 // FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.9
clc;clear; // clears the console and command history 

// Given data
l = 0.45            // mean lenght in m
A = 25*10^-4        // cross sectional area in m^2
l_ag = 0.8*10^-3    // air gap in m
N = 500            // number of turns 
I = 1.25           // current in A 
fulx = 2.25*10^-3  // flux in Wb
phi = 1.5*10^-3   // flux in Wb

// caclulations 
B = phi/A                      // magnetic flux density in Wb/m^2
MMF = N*I                      // magnetomotive force in At
H = B/(4*%pi*10^-7)            // magnetomotizing force in At/m
MMF_ag = H*l_ag                // magnetomotive force in At
MMF_i = MMF-MMF_ag             // magnetomotive force for iron ring in At
H_i = MMF_i/l                  // magnetic field intensity for iron part in At/m
myu_r = B/((4*%pi*10^-7)*H_i)  // relative permiability for iron 

// display the result 
disp("Example 2.9 solution");
printf(" \n Relative permiability for iron \n myu_r = %.2f  \n", myu_r);
printf(" given current value in question is 2.25A, but in solution they took value of current as 1.25A ");
