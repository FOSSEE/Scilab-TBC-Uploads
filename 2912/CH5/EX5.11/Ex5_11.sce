//chapter 5
//example 5.11
//Calculate glancing angle
//page 107
clear;
clc;
//given
V=100; // in V (Potential)
n=1; // order of diffraction
d=2.15; // in Angstrom (lattice spacing)
//calculate
lambda=12.27/sqrt(V); // calculation of wavelength in Angstrom
printf('\nThe wavelength is\t=%.3f Angstrom',lambda);
// Since 2*d*sind(theta)=n*lambda
//therefore we have
theta=asind(n*lambda/(2*d)); // calculation of glancing angle
printf('\nThe glancing angle is\t=%.1f degree',theta);
// Note: In question V=100 eV but the solution is using V=100V in the book and I have also used V=100V
