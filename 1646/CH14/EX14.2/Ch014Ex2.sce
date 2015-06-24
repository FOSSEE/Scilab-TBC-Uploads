// Scilab code Ex14.2 : Pg:718(2011)
clc;clear;
e = 1.6e-019;   // Charge on an electron, C
mu_e = 0.36;    // Mobility of an electron, metre square/V-s
mu_h = 0.17;    // Mobility of a hole, metre square/V-s
n_i = 2.5e+018; // Intrinsic concentration of Ge sample, per metre cube
sigma = e*n_i*(mu_h+mu_e);  // Electrical conductivity of Ge sample, mho per metre
rho = 1/sigma;  // Electrical resistivity of Ge, ohm-m
printf("\nThe electrical conductivity of intrinsic germanium sample = %5.3f mho/m", sigma); 
printf("\nThe electrical resistivity of intrinsic germanium sample = %3.1f ohm-m", rho); 

// Result
// The electrical conductivity of intrinsic germanium sample = 0.212 mho/m
// The electrical resistivity of intrinsic germanium sample = 4.7 ohm-m 
