// Scilab code Ex11.2: Pg.483 (2008)
clc; clear;
theta = 44;    // Angle, degrees
c = 3e+08;    // Velocity of light, m/s
h = 6.63e-34;    // Plank's constant, J-s
E = 420e+06;    // Energy of scattered electron, MeV
p = (E*1.6e-19)/c;    // Momentum of electron, kg-m/s
lamda = h/p;    // de Broglie wavelength of electron, m
R = 0.61*lamda/sind(theta);    // Radius of Oxygen nucleus, m
printf("\nThe radius of the O-16 nucleus = %4.2f fm", R*1e+15);

// Result
// The radius of the O-16 nucleus = 2.60 fm 