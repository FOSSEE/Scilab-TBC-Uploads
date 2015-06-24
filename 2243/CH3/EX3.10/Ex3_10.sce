clc();
clear;
//Given:
lambda = 6000; // wavelength in A
mu = 1; //refractive index for air
// Fringe pattern having 100 fringes per cm
betaa = 0.01; // fringe width in cm
// And,We know betaa = lambda/(2*mu*alpha) , so
 // 1 A = 1.0*10^-8 cm
 alpha = lambda*10^-8/(2*mu*betaa); // wedge angle in rad
 printf("Wedge angle = %.3f rad",alpha);

