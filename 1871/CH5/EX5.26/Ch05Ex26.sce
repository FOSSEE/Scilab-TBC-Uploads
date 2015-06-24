// Scilab code Ex5.26: Pg:233 (2008)
clc;clear;
Lambda = 5.5e-05;    //Mean wavelength of light, cm
a = 0.2;    // Diameter of the pupil of an eye, cm
theta = 1.22*Lambda/a;    // The smallest angular separation resolvable by a human eye of pupil diameter a, radian
l = 5000;    // Distance of person from the man, cm
x = theta * l;    // Minimum linear resolvable distance between two person, cm
printf("\nThe minimum linear resolvable distance between two persons = %4.3f cm",x);

// Result 
// The minimum linear resolvable distance between two persons = 1.678 cm 