// Example 2.7.11  page 2.29

clc;
clear all;

n1=1.5;       //refractive index of core
n2=1.38;       //refractive index of cladding
lamda=1300d-9;       //Wavelength
a=25d-6;        //core radius

NA=sqrt(n1^2 - n2^2);       //computing Numerical aperture
theta= asind(NA);        //computing acceptance angle
solid_angle=%pi*(NA)^2;     //computing solid angle
v= 2*%pi*a*NA/lamda;      //computing normalized frequency
M=(v)^2/2;      //computing guided modes
M=round(M);
printf("\nNumerical aperture is %.2f.\nNormalized frequency is %.2f.\nAcceptance angle is %.2f degrees.\nSolid angle is %.3f radians.\nTotal number of modes are %d.",NA,v,theta,solid_angle,M);
printf("\n\n NOTE - Calculation error in the book.\n(2.25-1.9)^0.5=0.59; they have taken 0.35");


//Calculation error in the book.(2.25-1.9)^0.5=0.59; they have taken 0.35
//answers in the book,
//Numerical aperture is 0.35.(incorrect)
//Normalized frequency is 42.26.(incorrect)
//Acceptance angle is 20.48 degrees.(incorrect)
//Solid angle is 0.384 radians.(incorrect)
