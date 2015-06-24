// Scilab code Ex7.4: Pg:288 (2008)
clc;clear;
f0 = 8e+06;    // Cyclotron frequency, c/s
c = 3e+010;    // Speed of light, cm/s
m = 1.67e-024;    // Mass of proton, gm
q = 4.8e-010/c;    // Charge on a proton, esu
// Since the cyclotron frequency is given by fo = q*B/2*%pi*m. On solving it for B, we have 
B = 2*%pi*m*f0/q;    // Magnetic field, Weber per meter square 
printf("\nThe magnetic field to accelerate protons = %5.3f Wb per Sq. m", B/1e+04);

// Result 
// The magnetic field to accelerate protons = 0.525 Wb per Sq. m 