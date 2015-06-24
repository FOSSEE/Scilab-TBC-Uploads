// Example 2.18:Critical Acceptance Angle
clc;
clear;
close;
n2=1.59;//Cladding Refractive Index
NA=0.20;// NUMERICAL APERTURE IN AIR
n1= sqrt(NA^2+n2^2);// Core refractive index
n0=1.33;//refractive index of water
NA=sqrt(n1^2-n2^2)/n0;// Numerical aperture in water
Om=asind(NA);
disp(Om," Acceptance angle in degree is")
