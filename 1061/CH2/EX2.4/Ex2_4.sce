//Ex:2.4
clc;
clear;
close;
n1=1.50;// core refractive index
n2=1.45;// cladding refractive index
dl=(n1-n2)/n1;
n_a=n1*(sqrt(2*dl));// numerical aperture
x_a=(asin(n_a))*180/%pi;// acceptance angle in degree
x_c=(asin(n2/n1))*180/3.14;// critical angle in degree
printf("Numerical aperture = %f",n_a);
printf("\n acceptance angle in degree = %f degree",x_a);
printf("\n critical angle in degree = %f degree",x_c);