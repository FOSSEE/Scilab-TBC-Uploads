// Scilab Code Ex5.31: Page-301 (2008)
clc; clear;
delta_x = 4;    // Interval at the centre of the box at which the probability is to be found out, angstrom
l = 10;    // Width of one dimensional infinite height box, angstrom
P = 2*delta_x/l;    // Probability of finding the particle within 4 angstrom interval
printf("\nThe probability of finding the particle within the %d angstrom interval at the centre of the box = %3.1f", delta_x, P);

// Result
// The probability of finding the particle within the 4 angstrom interval at the centre of the box = 0.8 