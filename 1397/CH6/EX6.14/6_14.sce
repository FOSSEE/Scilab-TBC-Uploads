//clc();
clear;
//To calculate the inter planar spacing of reflection planes
KE=3.76*10^-17;         //kinetic energy of electron in J
n=1;
//theta=9.12'.25"
theta=9.20694;         //by converting to degrees
h=6.625*10^-34;
m=9.1*10^-31;
a=sqrt(2*m*KE);
lambda=h/a;
lambda=lambda*10^10;     //converting from metres to angstrom
disp(lambda);
d=(n*lambda)/(2*sind(theta));
printf("inter planar spacing in Angstrom is");
disp(d);
