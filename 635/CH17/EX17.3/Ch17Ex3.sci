// Scilab Code Ex17.3 Calculating critical current for a lead wire from critical temperature of lead Page-537 (2010)
T_c = 7.18;    // Critical temperature of superconducting transition for Pb, kelvin
H_c0 = 6.5e+4;    // Critical magnetic field intensity to destroy superconductivity at zero kelvin, A/m
T = 4.2;    // Temperature at which critical magnetic field becomes H_cT, kelvin  
d = 1e-03;    // Diameter of lead wire, m
H_cT = H_c0*(1-(T/T_c)^2);;    // Critical magnetic field intensity at temperature T kelvin, A/m
I_c = %pi*d*H_cT;    // Critical current through the lead wire, A
printf("\nThe critical current through the lead wire = %6.2f A", I_c);

// Result 
// The critical current through the lead wire = 134.33 A 