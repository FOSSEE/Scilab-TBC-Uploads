//Ex:2_1
clc;
clear;
close;
n1=1.55;// core refractive index
n2=1.50;// cladding refractive index
x=asin(n2/n1); // Critical angle in radians
x1=x*180/(%pi);// Critical angle in degree
n_a=sqrt(n1^2-n2^2);// Numerical aperture
x_a=asin(n_a)*180/(%pi);
x_a1=ceil(x_a);// Acceptance angle in Degree
printf("Critical angle in degree= %f degree",x1);
printf("\n Numerical aperture= %f ",n_a);
printf("\n Acceptance angle in degree= %f degree",x_a1);