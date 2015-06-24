//Ex:2.3
clc;
clear;
close;
n1=1.50;// core refractive index
n2=1.47;// cladding refractive index
dl=(n1-n2)/n1;
n_a=n1*(sqrt(2*dl));// numerical aperture
x_a=(asin(n_a))*180/%pi;// acceptance angle in degree
printf("Numerical aperture = %f",n_a);
printf("\n acceptance angle in degree = %f degree",x_a);