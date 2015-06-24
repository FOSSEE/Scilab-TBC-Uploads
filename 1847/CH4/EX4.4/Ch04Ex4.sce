// Scilab Code Ex4.4:: Page-4.6 (2009)
clc; clear;
ip = 60;     // Polarizing angle, degrees
A = 60;     // Angle of equilateral prism, degrees
mu = tand(ip);  // Refractive index of the material from Brewster's law 
// For angle of minimum deviation in prism, delta_m, refractive index
// mu = sind((A+delta_m)/2)/sind(A/2), solving for delta_m
delta_m = 2*asind(mu*sind(A/2))-A;      // Angle of minimum deviation, degrees

printf("\nThe angle of minimum deviation for green light = %2d degrees", ceil(delta_m));

// Result 
// The angle of minimum deviation for green light = 60 degrees 
