//Example 1.9.3 page 1.23
// To calculate RI of core and cladding..

clc;
clear;

NA = 0.35;         //Numerical Aperture
del = 0.01;
//NA= n1*(sqrt(2*del)      n1 is RI of core
n1 = 0.35/(sqrt(2*del));
printf('The RI of core is %.4f',n1);

// Numerical Aperture is also given by 
// NA = sqrt(n1^2 - n2^2)   // n2 is RI of cladding
n2 = sqrt((n1^2-NA^2));
printf('\n\nThe RI of Cladding %.3f',n2);
