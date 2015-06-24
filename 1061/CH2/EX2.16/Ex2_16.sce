//Ex:2.16
clc;
clear;
close;
n1=1.50;// core refractive index
dl=0.01;// index difference
n_m=n1*(sqrt(2*dl));// numerical aperture
x_a=%pi*(n_m)^2;// acceptance angle in radian
n2_1=1-dl;// the ratio of n2 to n1
x_c=(asin(n2_1))*180/%pi;// critical angle in degree
printf("numerical aperture=%f",n_m);
printf("\n acceptance angle=%f radian",x_a);
printf("\n critical angle=%f degree",x_c);