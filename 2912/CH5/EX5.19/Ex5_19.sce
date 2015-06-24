//chapter 5
//example 5.19
//Calculate uncertainty in the position of X-ray photon
//page 111-112
clear;
clc;
//given
lambda=1; // in Angstrom (wavelength)
pi=3.14; // value of pi used in the solution
dlambda=1E-6; // uncertainty in wavelength
//calculate
lambda=lambda*1E-10; // sinc lambda is in Angstrom
// By uncertainty principle, dx*dp>=h/(4*pi)  --(1)
// since p=h/lambda  -----(2)
// Or p*lambda=h 
// diffrentiting this equation
// p*dlambda+lambda*dp=0
// dp=-p*dlambda/lambda     ----(3)
//from (2) and (3)  dp=-h*dlambda/lambda^2   ---(4)
// from (1) and(4)  dx*dlambda>=lambda^2/4*pi
// Or dx=lambda^2/(4*pi*dlambda)
dx=lambda^2/(4*pi*dlambda); //calculation of uncertainty in the position
printf('\nThe uncertainty in the position of X-ray photon is \tdx=%1.0E m',dx);
// Note: 1. In the question, wavelength accuracy is given as 1 in 1E8 but in book solution has used 1 in 1E6 and same has been used by me.
//       2. ANSWEER IS WRONG DUE TO CALCULATION MISTAKE
