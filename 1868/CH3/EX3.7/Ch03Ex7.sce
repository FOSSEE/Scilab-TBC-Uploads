// Scilab code Ex3.7: Pg 93 (2005)
clc; clear;
h = 6.63e-34;   // Plank's constant, Js
m_e = 9.11e-31;   // Mass of electron, kg
c = 3e+08;    // Velocity of light, m/s
theta = ((%pi)/180)*45;    // Angle, radians
delta_lamda = (h/(m_e*c)*(1-cos(theta)));   // Compton shift, nm
lamda_o = 0.200e-09;    // Wavelength of X-ray, nm
lamda = delta_lamda+lamda_o   // Increased wavelength of scattered X-ray, nm
printf("\nIncreased wavelength of scattered X-ray = %8.6f nm", lamda*1e+09);

// Result
// Increased wavelength of scattered X-ray = 0.200711 nm