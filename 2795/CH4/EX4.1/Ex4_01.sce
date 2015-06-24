// Scilab Code Ex4.1: Page-129 (2013)
clc; clear
m_e = 0.000549;    // Rest mass of an electron, u
m_He = 4.002603;    // Rest mass of a helium, u
M_alpha = m_He - 2*m_e;    // Mass of alpha particle, u
theta_max = 2*m_e/M_alpha;    // Maximum scttering angle for aplha particle, rad
printf("\nThe maximum scttering angle for aplha particle = %5.3f degrees", theta_max*180/%pi);

// Result
// The maximum scttering angle for aplha particle = 0.016 degrees 