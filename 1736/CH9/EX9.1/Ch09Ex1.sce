// Scilab code Ex9.1 Page:278 (2006)
clc; clear;
H_c0 = 0.0803;    // Critical field at absolute zero, Tesla
T_c = 7.19;    // Transition temperature of specimen  lead, Kelvin
T = 5;    // Temperature at which destruction of superconductivity is to be found, Kelvin
H_c = H_c0*[1-(T/T_c)^2];    // Critical field required to destroy superconductivity, Tesla
printf("\nCritical field required to destroy superconductivity = %6.4f T", H_c);

// Result 
// Critical field required to destroy superconductivity = 0.0415 T
