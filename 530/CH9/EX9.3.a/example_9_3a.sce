clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.3(a)
// Page 352
printf("Example 9.3(a), Page 352 \n \n");

t = 0.04 ; // [m]
A = 2 ; // [m^2]
rho1 = 0.10 ;
rho2 = 0.01 ;
D_400 = 1.6*10^-11 ; // at 400K [m^2/s]

// Mass Diffusion in solid solution, assuming Ficks law is valid & steady state and one dimensional diffusion

// Subtituting the values in eqn 9.3.3 , At 400 K

m_400 = A*D_400*(rho1-rho2)/t; // [kg/s]
printf("Rate of diffusion of Hydrogen at 400 K = %e kg/s \n",m_400);