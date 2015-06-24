// Scilab Code Ex4.23:: Page-4.35 (2009)
clc; clear;
l = 3;     // Length of the tube, dm
theta = 17.0;       // Angle of rotation of the plane of polarization, degrees
c = 1.0;      // For simplicity assume concentration of solution to be unity, g/cc
l_prime = 2.5;   // New length of the tube, dm
c_prime = 1.25*c;  // Concentration of solution with 25 cm length of tube, g/cc
theta_prime = theta*l_prime*c_prime/(l*c);  // Angle of rotation in a tube of new length


printf("\nThe angle of rotation in a tube of new length of %3.1f cm = %4.1f degrees", l_prime, theta_prime);

// Result 
// The angle of rotation in a tube of new length of 2.5 cm = 17.7 degrees 

 
