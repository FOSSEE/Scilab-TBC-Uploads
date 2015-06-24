// Scilab Code Ex2.13:: Page-2.13 (2009)
clc; clear;
b = 0.125;  // Fringe width of the interfernce pattern due to biprism, cm
d = 1;  // For simplicity assume distance between sources to be unity, cm
d_prime = 3/4*d;    // New distance between sources, cm 
// As b is proportional to 1/d, so
b_prime = b*d/d_prime;  // New fringe width of the interfernce pattern due to biprism, cm

printf("\nThe new value of fringe width due to reduced slit separation = %5.3f cm", b_prime);

// Result
// The new value of fringe width due to reduced slit separation = 0.167 cm
