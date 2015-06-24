// Scilab code Exa9.3 : : Page-390 (2011)
clc; clear;
h_cut = 1.0545e-34; // Reduced Planck's constant, joule sec
G = 6.6e-11;        // Gravitational constant, newton square metre per square Kg 
m = 10^30;        // Mass of the star, Kg
m_n = 1.67e-27;        // Mass of the neutron, Kg
R = (9*%pi/4)^(2/3)*h_cut^2/(G*(m_n)^3)*(m_n/m)^(1/3);        // Radius of the neutron star, metre
printf("\nThe radius of the neutron star = %3.1e metre", R);

// Result
// The radius of the neutron star = 1.6e+004 metre 