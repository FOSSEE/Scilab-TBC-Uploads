// Scilab Code Ex5.37: Page:315 (2011)
clc;clear;
// Function to convert degrees to deg-min
function [d,m] = deg2degmin(deg)
    d = int(deg);
    m = (deg-d)*60;
endfunction

lambda = 7.62e-07;....// Wavelength of the polarized light, m
mu_R = 1.53914;    // Refractive index of quartz for right-handed circularly polarized light
mu_L = 1.53920;    // Refractive index of quartz for left-handed circularly polarized light
t = 5.0e-004;....// Thickness of the plate, m
theta = %pi*t*(mu_L-mu_R)/lambda;     // The angle of optical rotation, radian
[d,m] = deg2degmin(theta*180/%pi);    // Call the conversion function
printf("\nThe angle of rotation produced by its plate = %6.4f radians = %d degrees %d minutes", theta, d, m);

// Result
// The angle of rotation produced by its plate = 0.1237 radians = 7 degrees 5 minutes 

