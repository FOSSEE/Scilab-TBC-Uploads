//chapter 3
//example 3.12
//calculate lattice spacing
//page 61
clear;
clc;
//given
h=1,k=1,l=1; // miller indices
a=2.5,b=2.5,c=1.8; // in Angstrom (lattice constants for tetragonal lattice )
//calculate
d=1/sqrt((h/a)^2+(k/b)^2+(l/c)^2); // calculation for interplanar spacing
printf('\nThe lattice spacing is\td=%.2f Angstrom',d); 
