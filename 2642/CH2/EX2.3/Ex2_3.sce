// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.3

clc;clear; // clears the console and command history 

// Given data
myu_r = 625 // relative permiability of rectangular core
N = 25      // number of turns
I = 2       // current in A
a = 5.5     // lenght of rectangular box in cm
b = 1.5     // width of rectangular box in cm

// caclulations 
l = 2*(a+b)             // mean length of core in cm
H = N*I/(l*10^-2)       // magnetic field intensity in At/m
myu = 4*%pi*10^-7*myu_r // permeabilty
B = myu*H               // magnetic flux density in Wb/m^2;

// display the result 
disp("Example 2.3 solution");
printf(" \n Magnetic field intensity \n H= %.0f At/m \n", H);
printf(" \n Permeabilty \n myu= %.2e  \n", myu);
printf(" \n Magnetic flux density \n B= %.2f Wb/m^2 \n", B);


