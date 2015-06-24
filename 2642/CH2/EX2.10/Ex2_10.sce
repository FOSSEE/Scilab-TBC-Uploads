// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.10
clc;clear; // clears the console and command history 

// Given data
A = 2*10^-4        // cross sectional area in m^2
N = 200            // number of turns 
flux = 1.5*10^-3   // flux in Wb
myu_r = 4000       // relative permiability of core
l_1 = 0.01         // length in m
a = 9              // length in cm
w = 3              // width in cm

// caclulations 
myu = myu_r*4*%pi*10^-7       // permiability 
l_2 = (4*(a-w-w+(1.5+1.5))-1) // mean length in cm 
R_mg = l_1/(4*%pi*10^-7*A)    // reluctance of iron for air gap At/Wb
R_mi = l_2*10^-2/(myu*A)      // reluctance of iron for air gapAt/Wb
R_mt = R_mg+R_mi              // total relectance in At/Wb
I = R_mt*flux/N               // current in A 

// display the result 
disp("Example 2.10 solution");
printf(" \n Current flowing through the coil \n I = %.0f A \n", I);

// NOTE : In question they given flux=2.5mWb but in solution they took flux=1.5mWb
