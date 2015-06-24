//Ex:2.11
clc;
clear;
close;
n1=1.50;// core refractive index
n2=1.45;// cladding refractive index
n_m=sqrt(n1^2-n2^2);// numerical aperture
dl=(n1-n2)/n1;// fractional difference
printf("numerical aperture = %f",n_m);
printf("\n fractional difference = %f",dl);