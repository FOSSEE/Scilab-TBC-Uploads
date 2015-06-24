// Example 2.4:Numerical Aperture
clc;
clear;
close;
n1=1.4675;//Waveguide Refractive Index
n2=1.4622;//Cladding Refractive Index
NA=sqrt(n1^2-n2^2);// Numerical Aperture
disp(NA,"Numerical Aperture of the Fiber")
