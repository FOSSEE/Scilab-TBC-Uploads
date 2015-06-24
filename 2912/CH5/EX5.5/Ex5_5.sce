//chapter 5
//example 5.4
//Calculate wavelength
//page 104
clear;
clc;
//given
V=1600; // in V (Potential)
//calculate
lambda=12.27/sqrt(V); // calculation of wavelength in Angstrom
printf('\nThe wavelength is\t=%.3f Angstrom',lambda);
// Note: The answer in the book is wrong due to calculation mistake
