//Ex:2.9
clc;
clear;
close;
n1=1.44;// core refractive index
dl=0.02;
n_a=n1*sqrt(2*dl);
n_a=n1*(sqrt(2*dl));// numerical aperture
x_a=(asin(n_a))*180/%pi;// acceptance angle in degree
printf("Numerical aperture = %f",n_a);
printf("\n acceptance angle in degree = %f degree",x_a);