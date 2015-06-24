// Scilab code Exa1.21 :  : Page-58(2011)
clc; clear;
Q = 130;    // Quadrupole moment, square femto metre
A = 155;    // Mass number of gadolinium
R_0 = 1.4*A^(1/3)   // Distance of closest approach, fm
Z = 64;     // Atomic number
delR0 = 5*Q/(6*Z*R_0^2)*100;    // Change in the value of R_0, percent
printf("\nChange in the value of fractional change in R_0 is only %4.2f percent \nThus, we can assumed that Gadolinium nucleus is spherical.", delR0);

// Result
// Change in the value of fractional change in R_0 is only 2.99 percent 
// Thus, we can assumed that Gadolinium nucleus is spherical. 
