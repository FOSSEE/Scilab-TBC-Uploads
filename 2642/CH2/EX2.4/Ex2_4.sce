// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.4

clc;clear; // clears the console and command history 

// Given data
N = 6         // number of turns
I =3          // current in A
flux = 0.056 // flux in Wb

// caclulations 
MMF = N*I       // magnetomotive force in At
R_m = MMF/flux // reluctance in At/Wb

// display the result 
disp("Example 2.4 solution");
printf(" \n Magnetomotive force \n MMF= %.0f At \n", MMF);
printf( "\n Reluctance \n R_m= %.1f At/Wb \n", R_m);


