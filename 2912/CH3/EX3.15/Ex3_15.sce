//chapter 3
//example 3.15
//calculate density
//page 63
clear;
clc;
//given
h=1,k=0,l=0; // miller indices
a=2.5; // in Angstrom (lattice constant)
//calculate
a=a*1E-10; //hence a is in Angstrom
d=a/sqrt(h^2+k^2+l^2); // calculation for interplanar spacing
p=d/a^3;
printf('\nThe density is\tp=%1.1E lattice points/m^2',p); 
