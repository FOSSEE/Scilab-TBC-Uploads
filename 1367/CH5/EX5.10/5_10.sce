//Find Dimension of unit cell
//Ex:5.10
clc;
clear;
close;
w=0.0708;//wavelength in nm
h=1;
k=0;
l=0;
s=0.0132;//a common divisor i.e.sin^2(theta)=0.0132
a=sqrt((w^2*(h^2+k^2+l^2))/(4*s));//in nm
a1=10^3*a;//in pm
disp(a1,"Dimension of unit cell (in Picometer) = ");