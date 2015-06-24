//Ex:2.14
clc;
clear;
close;
n1=1.46;// core refractive index
dl=0.01;// index difference
n_2=n1-(n1*dl);// cladding refractive index
x_c=(asin(n_2/n1))*180/%pi;// critical angle in degree
n_m=sqrt(n1^2-n_2^2);// numerical aperture
printf("critical angle = %f degree",x_c);
printf("\n numerical aperture = %f",n_m);