// Example 4.9.1  page 4.19

clc;
clear;

n1=1.5;     //refractive index of core
delta=0.03/100;     //relative refractive index
lamda=0.82d-6;      //wavelength

n2=sqrt(n1^2-2*delta*n1^2);      //computing cladding refractive index
Rc=(3*n1^2*lamda)/(4*3.14*(n1^2-n2^2)^1.5);     //computing critical radius
Rc=Rc*10^3;
printf("\nCritical radius is %.1f micrometer.",Rc);

//answer in the book is 9 micrometer, deviation of 0.1 micrometer.
