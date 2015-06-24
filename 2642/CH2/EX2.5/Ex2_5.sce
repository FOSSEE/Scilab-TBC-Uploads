// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.5
clc;clear; // clears the console and command history 

// Given data
I = 15                 // current through conductor in A
N = 10                 // number of turns
myu_0 = 4*%pi*10^-7   // permiability 
myu_r = 1            // relative permiability of air
r = 0.015

// caclulations 
B = myu_0*myu_r*N*I/(2*%pi*r) // magnetic flux in T

// display the result 
disp("Example 2.5 solution");
printf(" \n Magnetic flux \n B= %.0e T \n", B);


