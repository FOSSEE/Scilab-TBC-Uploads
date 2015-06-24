// Scilab code Ex1.13: Pg.44 (2008)
clc; clear;
// For simplicity let velocity of light be unity
c = 1;     // Velocity of light, m/s
lamda_o = 656e-09;    //  Actual wavelength of emitted light, m
lamda = 1458e-09;     // Wavelength of emitted light as measured from galaxy, m
// Since (1-Beta)/(1+Beta) = (lamda_o/lamda)^2, solving for Beta
Beta = (1-(lamda_o/lamda)^2)/(1+(lamda_o/lamda)^2);   // Boost parameter
v = Beta*c;     // Receding velocity of galaxy, m/s
printf("\nReceding velocity of galaxy = %5.3fc", v);

// Result
// Receding velocity of galaxy = 0.663c