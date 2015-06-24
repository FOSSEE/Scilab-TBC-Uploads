//Ex:7.8
clc;
clear;
close;
L_f=0.036;
n_f=10^(-0.036);
// here we get a quadratic equation in n1 and on solving we get
n1=(2.17+sqrt((-2.17)^2-4*1*1))/2;// refractive index of the fiber core
printf("The refractive index of the fiber core =%f", n1);