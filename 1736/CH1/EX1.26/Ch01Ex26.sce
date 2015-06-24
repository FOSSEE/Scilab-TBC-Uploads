// Scilab Code Ex 1.26 Page-36 (2006)
clc; clear;
a_Rh = 3.80;    // Lattice constant of Rh, angstrom
a_Pt = 3.92;    // Lattice constant of Pt, angstrom
a_Pt_Rh = 3.78;    // Lattice constant of unit cell of Pt-Rh alloy, angstrom
V = (a_Pt*1e-08)^3; // Volume of unit cell of Pt, metre cube
V_90 = 0.9*V;   // 90 percent of the cell volume of Pt, metre cube

// For x = 20% of Rh in Pt-Rh alloy, we have
// a_Pt_Rh = ((1-x)*a_Pt + x*a_Rh), solving for x
x = poly(0, 'x');
x = roots (a_Pt_Rh - a_Pt + x*a_Pt - x*a_Rh);      // Amount of required Rh in Pt to change the unit cell volume
printf("\nThe amount of Rh required in Pt to change the unit cell volume = %4.2f percent", x);

// Result
// The amount of Rh required in Pt to change the unit cell volume = 1.17 percent 
