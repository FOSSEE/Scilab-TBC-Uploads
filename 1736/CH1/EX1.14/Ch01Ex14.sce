// Scilab Code Ex 1.14 :Page-26 (2006)
clc; clear;
R = 1;  // For simplicity we assume radius of atom to be unity, m

// For bcc Structure,
a = 4*R/sqrt(3);    // Lattice parameter of bcc crystal, m
// We have (R+r)^2 = (a/2)^2+(a/4)^2, solving for r
r = a/2-R   // Relation between radius of the void and radius of the atom, m 
printf("\nThe radius of void for carbon atoms in iron = %5.3fR", r); 

// Result 
//The radius of void for carbon atoms in iron = 0.155R 





