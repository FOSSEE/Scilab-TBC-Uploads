// Scilab Code Ex2.2 : Page-2.22 (2004)
clc;clear;
r1 = 1.258e-10; // Radius of atom for BCC, m
a = 4*r1/(3^(0.5));  // Lattice constant for BCC atom, m
V_bcc = a^3; //  Volume of unit cell of BCC , in m^3
V_one = V_bcc/2; // Volume occupied by one atom in BCC, in m^3
r2 =    1.292e-10;  //  Radius of atom for FCC, m
b = 2*(sqrt(2))*r2    //  Lattice constant for FCC atom
V_fcc = b^3; //  Volume of unit cell of FCC , in m^3
V_two = V_bcc/4; //  Volume occupied by one atom in FCC, in m^3
DV = (V_one-V_two)/V_one; // Change in volume , percentage

printf("\nChange in volume DV =%3.1f percentage.", DV);

// Result 
// Change in volume DV =0.5 percentage. 
