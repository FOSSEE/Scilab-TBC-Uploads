//chapter 1
//example 1.5
//calculate compressibility
//page 16
clear;
clc;
//given
r_0=.41; //in mm(lattice constant)
e=1.6E-19; // in C (charge of electron)
E_o= 8.85E-12;// absolute premittivity
n=0.5; // repulsive exponent value
alpha=1.76; // Madelung constant
pi=3.14; // value of pi used in the solution
//calculate
r=.41*1E-3; // since r is in mm
Beta=72*pi*E_o*r^4/(alpha*e^2*(n-1)); // calculation compressibility
printf('\nThe compressibility  is\tBeta=%1.2E ',Beta); 
// Note: the answer in the book is wrong due to calculation mistake
