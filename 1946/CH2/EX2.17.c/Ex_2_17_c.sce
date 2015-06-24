// Example 2.17.c: External Critical Acceptance Angle
clc;
clear;
close;
n1=1.5;//Waveguide Refractive Index
d= 0.0005;// Cange in core-cladding refractive index
n2= n1-(d*n1);
n0=1;// For air
Om=asind(sqrt(n1^2-n2^2)/n0);
disp(Om,"External Critical Acceptance angle in degree is")
