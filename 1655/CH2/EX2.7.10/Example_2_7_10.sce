// Example 2.7.10  page 2.29

clc;
clear;

n1=1.48;       //refractive index of core
n2=1.46;       //refractive index of cladding
lamda1=1320d-9;       //Wavelength
lamda2=1550d-9;       //Wavelength
a=25d-6;        //radius of core

NA=sqrt(n1^2 - n2^2);       //computing Numerical aperture
v1=2*%pi*a*NA/lamda1;       //computing normalized frequency
v1=round(v1);
M1=v1^2/2;      //computing number of guided modes
M1=round(M1);
v2=2*%pi*a*NA/lamda2;
M2=v2^2/2;
M2=round(M2);
lamda1=lamda1*10^9;
lamda2=lamda2*10^9;

printf("\nfor %d nm, normalized frequency = %d, Guided modes = %d.",lamda1,v1,M1);
printf("\nfor %d nm, normalized frequency = %.2f, Guided modes = %d.",lamda2,v2,M2);

//answer in the book,
//for 1550 nm, normalized frequency = 24.69(deviation of 0.08), Guided modes = 305(deviation of 3)
