//chapter 5
//example 5.12
//Calculate spacing of crystal
//page 107
clear;
clc;
//given
V=344; // in V (Potential)
n=1; // order of diffraction
theta=60; // in degree (glancing angle)
//calculate
lambda=12.27/sqrt(V); // calculation of wavelength in Angstrom
printf('\nThe wavelength is\t\t=%.3f Angstrom',lambda);
// Since 2*d*sind(theta)=n*lambda
//therefore we have
d=n*lambda/(2*sind(theta)); // calculation of spacing constant
printf('\nThe spacing of the crystal is\td=%.4f Angstrom',d);
