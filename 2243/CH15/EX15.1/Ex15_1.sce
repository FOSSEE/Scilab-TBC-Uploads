clc();
clear;
//Given :
n0 = 1;//refractive index of outer medium
n1 = 1.5025; // refractive index of core
n2 = 1.4975; // refractive index of cladding
NA = sqrt(n1^2 - n2^2); // Numerical aperture with cladding
alpha_c = asind(NA/n0); // acceptance angle in degrees
NA1 = sqrt(n1^2 - n0^2);// Numerical aperture without cladding
printf("With cladding , NA  and Acceptance angle = %.4f  and %.3f degrees \n ",NA,alpha_c);
printf("Without cladding , NA = %.4f ",NA1);
