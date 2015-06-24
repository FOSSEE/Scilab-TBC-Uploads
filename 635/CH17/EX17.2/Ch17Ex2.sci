// Scilab Code Ex17.2 Variation of critical magnetic field with temperature for tin Page-537 (2010)
T_c = 3.69;    // Critical temperature of superconducting transition, kelvin
B_c0 = 3e+5/(4*%pi);    // Critical magnetic field intensity to destroy superconductivity at zero kelvin, tesla
B_cT = 2e+5/(4*%pi);    // Critical magnetic field at temperature T kelvin
// T = 2;    // Temperature at which critical magnetic field is to be found out, kelvin
// since B_cT = B_c0*(1-(T/T_c)^2); // Critical magnetic field intensity as a function of temperature
// Solving for T
T = sqrt(1-B_cT/B_c0)*T_c;    // Temperature at which critical magnetic field becomes B_cT, kelvin   
printf("\nThe temperature at which critical magnetic field becomes %4.2e T = %4.2f K",B_cT,T); // Display result
// Result 
// The temperature at which critical magnetic field becomes 1.59e+04 T = 2.13 K