// Scilab Code Ex3.3 :  Page-3.6 (2010)
clc;clear;
r1 = 1.258e-10;  // Atomic radius in BCC, metre
a1 = 4*r1/sqrt(3);  // Lattice constant for BCC,  metre 
V1 = a1^3;   // Volume of unit cell in BCC, metre cube
Vpa = V1/2; // Volume occupied by one atom in BCC, metre cube
r2 = 1.292e-10;  // Atomic radius in FCC, metre 
a2 = 2*r2*sqrt(2);  // Lattice constant for F    CC, cube
V2 = a2^3;   // Volume of unit cell in FCC, meter cube
Vpa1 = V2/4; // Volume occupied by one atom in FCC, metre cube
dV = (Vpa-Vpa1)/Vpa*100;    // Change in volume, percentage
printf("\nChange in volume in percentage = %4.3f percentage", dV);

// Result 
// Change in volume in percentage = 0.493 percentage
