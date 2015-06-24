// Scilab Code Ex7.1 : Variation of critical magnetic field with temperature : Page-152 (2010)
T_c = 3.722;    // Critical temperature of superconducting transition, kelvin
B_c0 = 0.0306;    // Critical magnetic field to destroy superconductivity, tesla
T = 2;    // Temperature at which critical magnetic field is to be found out, kelvin
B_cT = B_c0*(1-(T/T_c)^2);
printf("\nThe critical magnetic field at %d K = %6.4f T", T, B_cT);

// Result 
// The critical magnetic field at 2 K = 0.0218 T s