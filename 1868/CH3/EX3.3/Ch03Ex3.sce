// Scilab code Ex3.3: Pg 80 (2005)
clc; clear;
k_B = 1.381e-23;   // Boltzmann's constant, J/K
c = 3e+08;    // Velocity of light, m/s
h = 6.626e-34;    // Plank's constant, Js
// Since e_total = sigma*(T^4) = (2*(%pi)^5*(k_B)^4)/(15*(c^2)*(h^3))*T^4
sigma = (2*(%pi)^5*(k_B)^4)/(15*(c^2)*(h^3));
printf("\nThe value of sigma = %3.2fe-08 W/Sq.m/K^4", sigma*1e+08);

// Result
// The value of sigma = 5.67e-08 W/Sq.m/K^4
