// Scilab Code Ex 1.13 :Page-26 (2006)
clc; clear;
R = 1;  // For simplicity we assume radius of atom to be unity, m
// For bcc Structure,
a = 4*R/sqrt(3);    // Lattice parameter of bcc crystal, m
// We have (R+r)^2 = (a/2)^2+(a/4)^2, solving for r
r = sqrt(5)*a/4-R   // Relation between radius of the void and radius of the atom, m 
printf("\nThe radius of largest void in the bcc lattice = %4.2fR", r); 

// For fcc Structure,
a = 4*R/sqrt(2);    // Lattice parameter of fcc crystal, m
// We have (R+r)^2 = (a/2)^2+(a/4)^2, solving for r
r_fcc = a/2-R   // Relation between radius of the void and radius of the atom, m 
printf("\nThe radius of largest void in the fcc lattice is %4.2f times larger than that in the bcc lattice", r_fcc/r); 

// Result 
// The radius of largest void in the bcc lattice = 0.29R
// The radius of largest void in the fcc lattice is 1.42 times larger than that in the bcc lattice 





