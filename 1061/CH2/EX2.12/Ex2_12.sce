//Ex:2.12
clc;
clear;
close;
n1=1.46;// core refractive index
n2=1.45;// cladding refractive index
x_c=(asin(n2/n1))*180/%pi;// critical angle in degree
n_m=sqrt(n1^2-n2^2);// numerical aperture
x_a=(asin(n_m))*180/%pi;// acceptance angle in degree
printf("critical angle = %f degree",x_c);
printf("\n acceptance angle = %f degree",x_a);
printf("\n numerical aperture = %f",n_m);