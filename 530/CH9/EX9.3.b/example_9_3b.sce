clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.3(b)
// Page 352
printf("Example 9.3(b), Page 352 \n \n");

t = 0.04 ; // [m]
A = 2 ; // [m^2]
rho1 = 0.10 ;
rho2 = 0.01 ;
D_1200 = 3.5*10^-8 ; // at 1200k [m^2/s]

// Mass Diffusion in solid solution, assuming Ficks law is valid & steady state and one dimensional diffusion

// At 1200 K
// From eqn 9.3.3

m_1200 = A*D_1200*(rho1-rho2)/t ;
printf("(b) Rate of diffusion of Hydrogen at 1200 K = %e kg/s \n",m_1200);

