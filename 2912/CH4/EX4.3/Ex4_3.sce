//chapter 4
//example 4.3
//Find glancing angle
//page 75-76
clear;
clc;
//given
d=3.04E-10; // in mm (spacing constant)
lambda=0.79; // in Angstrom (wavelength)
n=3; // order
//calculate
// Since 2dsin(theta)=n(lambda)
// therefore we have
lambda=lambda*1E-10; //since lambda is in angstrom
theta=asind(n*lambda/(2*d));
printf('\nThe glancing angle is \t%.3f degree',theta);
//Note: In question the value of d=3.04E-9 cm but in solution is using d=3.04E-10 m.
// I have used d=3.04E-10 cm as used in the solution
