//clc();
clear;
//To calculate the space of the reflecting plane and volume
lambda=3*10^-10;      //wavelength in m
h=1;
k=0;
l=0;
theta=40;          //glancing angle in degrees
n=1;             //diffraction order
d=(n*lambda)/(2*sind(theta));
printf("space of the reflecting plane in m is");
disp(d);
x=sqrt(h^2+k^2+l^2);
a=d*x;
V=a^3;
printf("volume of unit cell in m^3 is");
disp(V);
