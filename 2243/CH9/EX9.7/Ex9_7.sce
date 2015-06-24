clc();
clear;
//Given:
n = 1;
theta = 30; // angle in degrees
lambda = 1.67; // wavelength in A
r = 1.25; // atomic radius in A
//Bragg's Law : 2*d*sin(theta) = n*lambda , d= d111
d111 = (n*lambda)/(2*sind(theta));
//plane (111)
h =1;k=1;l=1;
//dhkl = a/sqrt(h^2 + k^2 + l^2)
a = d111*sqrt(h^2 + k^2 + l^2); // in A
ratio = r/a;
printf(" Since, r/a = %.4f  and r = %f*a  Crystal Structure : BCC",ratio,ratio);

