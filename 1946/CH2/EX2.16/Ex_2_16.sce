// Example 2.16;Numerical Aperture & Acceptance Angle
clc;
clear;
close;
n1=1.45;//Waveguide Refractive Index
n2=1.40;//Cladding Refractive Index
NA=sqrt(n1^2-n2^2);// Numerical Aperture
disp(NA,"Numerical Aperture is")
Om=asind(NA);
disp(Om,"Acceptance angle in degree is")
