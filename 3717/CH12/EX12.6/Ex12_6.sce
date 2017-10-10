// Ex12_6 Page:248 (2014)
clc; clear;
e = 1.6e-019;   // Charge on an electron, C
n = 5e+028; // Number of atoms per unit volume of Cu, per metre-cube
R_H = -1/(n*e); // Hall coefficient, metre-cube/C
printf("\nThe Hall coefficient for Cu = %4.2e metre-cube/C", R_H);

// Result
// The Hall coefficient for Cu = -1.25e-10 metre-cube/C 
