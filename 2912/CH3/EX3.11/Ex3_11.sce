//chapter 3
//example 3.11
//calculate interplanar spacing
//page 61
clear;
clc;
//given
h=3,k=2,l=1; // miller indices
a=4.2E-8; // in cm (lattice constant)
//calculate
d=a/sqrt(h^2+k^2+l^2); // calculation for interplanar spacing
printf('\nThe interplanar spacing is\td=%1.2E cm',d); 
d=d*1E8; //changing unit from cm to Angstrom
printf('\n\t\t\t\td=%.2f Angstrom',d); 
