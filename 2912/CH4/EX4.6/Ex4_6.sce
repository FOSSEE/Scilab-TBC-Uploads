//chapter 4
//example 4.6
//find wavelength and energy
//page 77
clear;
clc;
//given
h=1,k=1,l=1; // miller indices
a=5.63; // in Angstrom  (lattice constant)
theta=27.5; // in degree (Glancing angle)
n=1; //order
H=6.625E-34; // in J-s (Plank's constant)
c=3E8; // in m/s (velocity of light)
e=1.6E-19;// charge of electron
//calculate
d=a/sqrt(h^2+k^2+l^2); // calculation for interplanar spacing
printf('\nThe lattice spacing is\td=%.2f Angstrom',d); 
// Since 2dsin(theta)=n(lambda)
// therefore we have
lambda=2*d*sind(theta)/n; // calculation for wavelength
printf('\nThe wavelength is\t=%.f Angstrom',lambda);
E=H*c/(lambda*1E-10); //calculation of Energy
printf('\nThe energy of X-rays is E=%1.3E J',E);
E=E/e; // changing unit from J to eV
printf('\n\t\tE=%1.3E eV',E);
// Note: c=3E8 m/s but in solution c=3E10 m/s has been used that's why answer is different
