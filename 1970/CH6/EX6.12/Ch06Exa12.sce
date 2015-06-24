// Scilab code Exa6.12: : Page-244(2011)
clc; clear;
h_kt = 1.05457e-34;    // Reduced planck's constant, joule sec
c = 3e+08;             // velocity of light, metre per sec
m_e = 9.1e-31;         // Mass of the electron, Kg
ft_O = 3162.28;        // Comparative half life for oxygen
ft_n = 1174.90;        // Comparative half life for neutron
M_f_sqr = 2            // Matrix element
g_f = sqrt(2*%pi^3*h_kt^7*log(2)/(m_e^5*c^4*ft_O*M_f_sqr));    // Coupling constant, joule cubic metre
C_ratio = (2*ft_O/(ft_n)-1)/3;    // Ratio of coupling strength
printf("\nThe value of coupling constant = %6.4e joule cubic metre\nThe ratio of coupling constant = %5.3f", g_f, C_ratio);

// Result
// The value of coupling constant = 1.3965e-062 joule cubic metre
// The ratio of coupling constant = 1.461 