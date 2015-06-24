//Ex:2.10
clc;
clear;
close;
n1=1.50;// core refractive index
n2=(99/100)*1.50;// cladding refractive index
x_c=(asin(n2/n1))*180/%pi;// critical angle in degree
n_m=sqrt(n1^2-n2^2);// numerical aperture
printf("critical angle = %f degree",x_c);
printf("\n numerical aperture = %f",n_m);