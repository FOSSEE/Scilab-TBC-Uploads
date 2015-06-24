//clc();
clear;
//To calculate the spacing of the crystal
V=854;        //accelerated voltage in V
theta=56;       //glancing angle in degrees
n=1;
h=6.625*10^-34;
m=9.1*10^-31;
e=1.6*10^-19;
lambda=h/(sqrt(2*m*e*V));
disp(lambda);       //wavelength in m
d=(n*lambda)/(2*sind(theta));
printf("spacing of crystal in metres is");
disp(d);
