//chapter 4
//example 4.7
//calculate interpalanr spacing
//page 77-78
clear;
clc;
//given
V=344; // in V (accelerating voltage)
theta=60; // in degree (glancing angle)
m=9.1E-31; // in Kg (mass of electron)
h=6.625e-34; // in J-s (Plank's constant)
n=1; //order
e=1.6E-19; // charge on electron
//calculate
//Since K=m*v^2/2=e*V
// therefore  v=sqrt(2*e*V/m)
// since lambda=h/(m*v)
//therefore we have lambda=h/sqrt(2*m*e*V)
lambda=h/sqrt(2*m*e*V); // calculation of lambda
printf('\nThe wavelength is \t\t =%1.2E m',lambda);
lambda=lambda*1E10; //changing unit from m to Angstrom
printf('\n\t\t\t\t =%.2f Angstrom',lambda);
// Since 2dsin(theta)=n(lambda)
// therefore we have
d=n*lambda/(2*sind(theta));
printf('\nThe interplanar spacing  is \t d=%.2f Angstrom',d);

