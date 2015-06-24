// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.7
clc;clear; // clears the console and command history 

// Given data
l = 0.1     // length in m
w = 0.01    // width in m
h =0.1      // height in m
N = 450     // number of turns
I = 0.2     // current in A
myu_r = 850 // relative permiability magnetic material

// caclulations 
MMF = N*I                       // magnetomotive force in At
l_c = (h-w)*4                   //  mean length of the path in m
A = w*w                         // cross sectional area in m^2
R_m = l_c/(4*%pi*10^-7*myu_r*A) // relectance in At/Wb
flux = MMF/R_m                  // flux in Wb
B = flux/A                      // magnetic flux density in Wb/m^2
H = B/(4*%pi*10^-7*myu_r)       // field intensity in At/m

// display the result 
disp("Example 2.7 solution");
printf(" \n Flux \n flux= %.2e Wb \n", flux);
printf(" \n Magnetic flux density \n B= %.4f Wb/m^2 \n", B);
printf(" \n Field intensity \n H= %.2f At/m \n", H);
