// Scilab Code Ex2.2 : Page-34 (2013)
clc; clear;
ly = 9.46e+015;    // Distance travelled by light in an year, m
c = 3e+008;    // Speed of light, m/s
L = 4.30*ly;    // Distance of Alpha Centauri from earth, m
T0 = 16*365.25*24*60*60;    // Proper time in system K_prime, s
// As time measured on earth, T = 2*L/v = T0_prime/sqrt(1-(v/c)^2), solving for v
v = sqrt(4*L^2/(T0^2+4*L^2/c^2));    // Speed of the aircraft, m/s
gama = 1/sqrt(1-(v/c)^2);    // Relativistic factor
T = gama*T0/(365.25*24*60*60);    // Time interval as measured on Earth, y
printf("\nThe speed of the aircraft = %4.2e m/s", v);
printf("\nThe time interval as measured on earth = %4.1f y", T);

// Result
// The speed of the aircraft = 1.42e+008 m/s
// The time interval as measured on earth = 18.2 y 
