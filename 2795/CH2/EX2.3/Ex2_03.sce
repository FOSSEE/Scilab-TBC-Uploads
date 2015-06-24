// Scilab Code Ex2.3 : Page-38 (2013)
clc; clear;
L0 = 4.30;    // Distance of Alpha Centauri from earth, ly
c = 3e+008;    // Speed of light, m/s
T = 8;    // Proper time in system K_prime, y
// As v/c = L0*sqrt(1-(v/c)^2)/(c*T) or bita = L0*sqrt(1-bita^2)/(c*T), solving for bita
bita = sqrt(L0^2/(T^2 + L0^2));    // Boost parameter
v = L0*sqrt(1-bita^2)/T;    // Speed of the aircraft, c units
printf("\nThe boost parameter = %5.3f", bita);    
printf("\nThe speed of the aircraft = %5.3f c units", v);

// Result
// The boost parameter = 0.473
// The speed of the aircraft = 0.473 c units 
