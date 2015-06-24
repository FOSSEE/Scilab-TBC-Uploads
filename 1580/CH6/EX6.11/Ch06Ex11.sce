// Scilab Code Ex 6.11: Page-6.22 (2004)
clc;clear;
h = 6.62e-34;  // Planck's constant, Js
m = 9.14e-31;   //  Mass of the electron, kg
e = 1.6e-19;    // Charge on electron, C
E1=3.22*e;      //  First state energy, joules
E2=3.24*e;      //  Second state energy, joules
n = 8*%pi*(2*m)^(3/2)*(E2^(3/2)-E1^(3/2))/(3*h^3);  // Number of energy state in unit volume

printf("\nNumber of energy state in unit volume= %4.3e ", n);

//Result
// Number of energy state in unit volume= 2.463e+26 
