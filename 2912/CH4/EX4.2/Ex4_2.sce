//chapter 4
//example 4.2
//Find glancing angle
//page 75
clear;
clc;
//given
h=1,k=1,l=0; //miller indices
a=0.26; // in nanometer (lattice constant)
lambda=0.065; // in nanometer (wavelength)
n=2; // order
//calculate
d=a/sqrt(h^2+k^2+l^2); // calculation of interlattice spacing
// Since 2dsin(theta)=n(lambda)
// therefore we have
theta=asind(n*lambda/(2*d));
printf('\nThe glancing angle is \t%.2f degree',theta);
//Note: there is slight variation in the answer due to round off
