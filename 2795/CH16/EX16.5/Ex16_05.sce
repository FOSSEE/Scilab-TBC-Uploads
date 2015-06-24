// Scilab Code Ex16.5: Page-590(2014)
clc; clear;
M_sun = 1.99e+030;    // Mass of the sun, kg
m_n = 1.675e-027;    // Rest mass of the neutron, kg
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Planck's constant, Js
G = 6.67e-011;    // Universal gravitational constant, N-Sq.m/kg^2
N = 2*M_sun/m_n;    // Number of neutrons in the neutron star
V = (6.5*h_bar^2/(N^(1/3)*m_n^3*G))^3;    // Volume of the neutron star, metre cube
R = (3/(4*%pi)*V)^(1/3);    // The radius of neutron star, m
printf("\nThe radius of the neutron star of 2 solar masses = %d km", ceil(R/1e+003));

// Result
// The radius of the neutron star of 2 solar masses = 11 km 