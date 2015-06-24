// Scilab Code Ex17.1 Variation of critical magnetic field with temperature Page-537 (2010)
T_c = 3.7;    // Critical temperature of superconducting transition, kelvin
H_c0 = 0.0306;    // Critical magnetic field to destroy superconductivity, tesla
T = 2;    // Temperature at which critical magnetic field is to be found out, kelvin
H_cT = H_c0*(1-(T/T_c)^2);
printf("\nThe critical magnetic field at %d K = %f T", T, H_cT);
// Result 
// The critical magnetic field at 2 K = 0.021659 T