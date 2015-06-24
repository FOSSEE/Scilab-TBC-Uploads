// Scilab Code Ex 1.27 :Page-36 (2006)
clc; clear;
r_bcc = 0.126;     // Atomic radius of the iron atoms in the bcc structure, nm
r_fcc = 0.129;      // Atomic radius of the iron atoms in the fcc structure, nm
a_bcc = 4*r_bcc/sqrt(3);
a_fcc = 4*r_fcc/sqrt(2);
V_bcc = 2*a_bcc^3;      // Volume of bcc unit cell, nm cube
V_fcc = a_fcc^3;      // Volume of fcc unit cell, nm cube
delta_V = V_fcc - V_bcc;    // Change in volume from bcc to fcc structure, nm cube
V = V_bcc;
V_frac = delta_V/V;     // Fractional change in volume from bcc to fcc structure

printf("\nThe percentage change in volume from bcc to fcc structure = %3.1f percent", V_frac*100);

// Result
// The percentage change in volume from bcc to fcc structure = -1.4 percent 
