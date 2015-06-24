//chapter 8
//example 8.2
//Calculate change in magnetic moment
//page 236
clear;
clc;
//given
r=0.052; // in nm (radius of orbit)
B=1; // in Wb/m^2 (magnetic field of induction)
e=1.6E-19; // in C (charge of electron)
m=9.1E-31; // in Kg (mass of electron)
//calculate
r=0.052*1E-9; // changing unit from nm to m
d_mu=(e^2*r^2*B)/(4*m); // calculation of change in magnetic moment
printf('\nThe change in magnetic moment is \t%1.4E Am^2',d_mu);
// Note: The answer in the book is wrong due to caluclation mistake 
