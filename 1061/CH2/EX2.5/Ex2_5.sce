//Ex:2.5
clc;
clear;
close;
dl=0.012;
n_a=0.22;// numerical aperture
n1=n_a/(sqrt(2*dl));// core refractive ondex
n2=n1-(dl*n1);// cladding refractive index
printf("core refractive ondex = %f",n1);
printf("\n cladding refractive index = %f",n2);