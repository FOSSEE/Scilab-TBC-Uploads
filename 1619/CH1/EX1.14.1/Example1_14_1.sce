//Example 1.14.1 page 1.41
// To calculate the number of modes...

clc;
clear;
d = 50*10^-6;       // diameter of fibre...
n1 = 1.48;      //RI of core..
n2 = 1.46;      //RI of cladding..
lamda = 0.82*10^-6;     //wavelength of light..

NA = sqrt(n1^2-n2^2);      // Numerical Aperture..
Vn= %pi*d*NA/lamda;     //normalised frequency...
M = Vn^2/2;     // number of modes...
printf(" The number of modes in the fibre are %d",M);
