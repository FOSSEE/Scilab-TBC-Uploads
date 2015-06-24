// Scilab code Exa1.5 :  : Page 52 (2011) 
clc; clear;
e = 1.60218e-019;        // Charge of an electron, C
A = 33;                // Atomic mass of Chlorine, amu
K = 9e+09;            // Coulomb constant, newton metre sqaure per coulomb square
E = 6.1*1.60218e-013;        // Coulomb energy, joule
R_0 = 3/5*K/E*e^2*(A)^(2/3); // Distance of closest approach, metre
R = R_0*A^(1/3);             // Radius of the nucleus, metre
printf("\nRadius of the nucleus : %4.2e metre", R);

// Result
// Radius of the nucleus : 4.6805e-015 metre 
