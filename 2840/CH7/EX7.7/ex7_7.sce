clc;
clear all;
n1 = 1.50; // Refreactive index of forst medium
delta = 0.003; // Index difference
lambda = 1.6*1e-6; // Operating wavelength of fober in meter
x=2*delta*n1*n1
n2 = sqrt(n1^2-x);//refractive index of cladding
disp(n2,'refractive index of cladding');
rc = (3*n1^2*lambda)/(4*%pi*sqrt(n1^2 - n2^2)^3);//The critical radius of curvature for which bending losses occur 
disp('meter',rc,'The critical radius of curvature for which bending losses occur is ');
//there is variation in answer than book .. book's answer is wright but in scilab it is not coming..(scilab mistake)
