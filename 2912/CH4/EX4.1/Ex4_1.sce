//chapter 4
//example 4.1
//Find spacing constant
//page 75
clear;
clc;
//given
lambda=2.6; // in Angstrom (wavelength)
theta=20; // in Degree (angle)
n=2;
//calculate
lambda=lambda*1E-10; // since lambda is in Angstrom
// Since 2dsin(theta)=n(lambda)
// therefore d=n(lambda)/2sin(theta)
d=n*lambda/(2*sind(theta));
printf('\nThe spacing constant is \td=%1.1E m',d);
d=d*1E10; // changing unit from m to Angstrom
printf('\n\t\t\t\td=%.1f Angstrom',d);
