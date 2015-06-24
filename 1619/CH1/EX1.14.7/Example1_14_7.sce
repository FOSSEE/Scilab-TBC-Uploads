//Example 1.14.7 page 1.47
// Cutoff wavelength, MAx core diameter for single mode operation..

clc;
clear;

n1= 1.49; //    RI of core.
n2=1.47;       //RI of cladding..
a= 2;     //radius of core in um..
NA= sqrt(n1^2-n2^2);    // Numerical Aperture..
// The maximum V number for single mode operation is 2.4...
V= 2.4;     //Normalised frequency..

lamda = 2*%pi*a*NA/V;       // Cutoff wavelength...
printf('The cutoff wavelength is %.2f um',lamda);


lamda1 = 1.310; // Givenn cutoff wavelength in um..
d= V*lamda1/(%pi*NA);      // core diameter..
printf('\n\nThe core diameter is %.2f um',d);
