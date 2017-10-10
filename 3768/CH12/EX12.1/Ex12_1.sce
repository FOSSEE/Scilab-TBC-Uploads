//Example number 12.1, Page number 263

clc;clear;
close;

//Variable declaration
NA=0.39;    //numerical aperture
delta=0.05;     //refractive index of cladding
//Calculation
n1=NA/sqrt(2*delta);      //refractive index of core
//Result
printf("refractive index of core is %.3f",n1)
