clc();
clear;
//Given:
lambda = 6000; //Wwavelength in A
mu = 1.33; //Refractive index for cornea
D = 2; //Diameter of pupil in mm
//Yellow light wavelength in eye:
lambda1 = lambda/mu ; //Wavelength in A
//The angular resolution 
//1 A = 1.0*10^-7 mm
theta_c = (1.22*lambda1*10^-7)/D; // angle in rad
//Maximum value for L
L = 1/tan(theta_c); // in mm
printf("Maximum value for L should be : %.1f mm",L);
