clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.6
// Page 364
printf("Example 9.6, Page 364 \n \n");

l = 1; // length, [m]
w = 0.25; // width, [m]
T = 293 ; // Temperature, [K]
rho_infinity = 0; // [kg/m^3]
R = 8314; // [J/ kg K]

// From Table A.2
v = 15.06*10^-6; // [m^2/s]
// From Table 9.2
Dab = 2.4224*10^-5; // [m^2/s]
Re = 2.5/v;
Sc = v/Dab;
// Since Re > 3*10^5, we may assume laminar boundary layer
Sh = 0.664*Sc^(1/3)*Re^(1/2); // Sherwood number
h = Sh*Dab;

p_aw = 2339; // Saturation pressure of water at 20 degree C. [N/m^2]
rho_aw = p_aw/(R/18*T); // [kg/m^3]
rho_a_inf = 0 ; // since air in the free stream is dry
m_h = h*(2*l*w)*(rho_aw-rho_infinity);
printf("Rate of evaporation from plate = %e kg/s",m_h);