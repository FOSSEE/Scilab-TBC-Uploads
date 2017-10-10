//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 10.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
d=50e-6;//Core diameter in m
a=d/2;//Core radius in m
n1=1.48;//Dimensionless maximum refractive index of the core
n2=1.46;//Dimensionless maximum refractive index of cladding

Delta=(n1-n2)/n1;
mprintf("\n Delta = %.4f",Delta);

LAMBDA=2*%pi*a/sqrt(2*Delta);//Condition for coupling of all the modes together for a graded index fiber
mprintf("\n LAMBDA = %.2f mm",LAMBDA/1e-3);//Dividing by 10^(-3) to convert into mm
