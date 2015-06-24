// Scilab Code Ex 1.11 :Page-25 (2006)
clc; clear;
R = 1;  // For simplicity we assume radius of atom to be unity, m
// For bcc Structure,
a = 4*R/sqrt(3);    // Lattice parameter of bcc crystal, m
// We have R+r = a/2, solving for r
r = a/2-R   // Relation between radius of the void and radius of the atom, m 
printf("\nThe maxiumum radius of the sphere that can fit into void between two bcc unit cells = %5.3fR", r); 

// Result 
// The maxiumum radius of the sphere that can fit into void between two bcc unit cells = 0.155R 





