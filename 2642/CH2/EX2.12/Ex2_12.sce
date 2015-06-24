// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.12
clc;clear; // clears the console and command history 

// Given data
l = 25*10^-2   // length of air-core coil in m
A = 4*10^-4    // cross sectional area in m^2
N = 65         // number of turns
myu_0 = 4*%pi*10^-7 
myu_r = 1

// caclulations 
myu = myu_0*myu_r 
L = N^2*myu*A/l  // inductance in H

// display the result 
disp("Example 2.12 solution");
printf(" \n Inductance of the coil \n L = %.1e H \n", L);

