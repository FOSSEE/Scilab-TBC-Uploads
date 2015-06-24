//Ex:2.13
clc;
clear;
close;
n_m=0.204;// numerical aperture
dl=0.01;// index difference
n1=n_m/(sqrt(2*dl));// core refractive index
n2=n1*(1-dl);// cladding refractive index
printf("core refractive index = %f",n1);
printf("\n cladding refractive index = %f",n2);