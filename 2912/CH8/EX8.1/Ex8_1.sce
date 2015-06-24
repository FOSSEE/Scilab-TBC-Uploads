//chapter 8
//example 8.1
//Calculate intensity of magnetism and magnetic flux density
//page 236
clear;
clc;
//given
X=-0.5E-5; // magnetic susceptibility of silicon
H=0.9E4; // in A/m (magnetic field intensity)
mu0=4*%pi*1E-7; // in H/m (absolute permeability)
//calculate
I=X*H; // calculation of intensity of magnetism
printf('\nThe intensity of magnetism is \tI=%.3f A/m',I);
B=mu0*H*(1+X); // calculation of magnetic flux density
printf('\nThe magnetic flux density is \tB=%.3f Wb/m^2',B);
// Note: The answer in the book is wrong. This is because the value of H given in the question is H=0.9E4 A/m but in the solution the value of H that has been used is H=9.9E4 A/m. 
