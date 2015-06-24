// Scilab Code Ex2.14:: Page-2.13 (2009)
clc; clear;
b = 0.187;  // Fringe width of the interfernce pattern due to biprism, cm
y1 = 1;  // For simplicity assume distance between slit and biprism to be unity, cm
y1_prime = 1.25*y1;    // New distance between slit and biprism, cm
// As d is directly proportional to y1 and b is directly proportional to d, so
// b is inversely proportional to y1
b_prime = b*y1/y1_prime;  // New fringe width of the interfernce pattern due to biprism, cm

printf("\nThe new value of fringe width due to increased slit-biprism separation = %5.3f cm", b_prime);

// Result
// The new value of fringe width due to increased slit-biprism separation = 0.150 cm 
