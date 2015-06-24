// Scilab code Ex12.5: Pg:468 (2008)
clc;clear;
// Define function to convert degrees to degree, minute and second
function [deg, minute, second] = deg2dms(theta)
    deg = floor(theta);
    minute = floor((theta-deg)*60);
    second = floor(((theta-deg)*60-minute)*60);
endfunction
n1 = 1.480;    // Core refractive index of an optical fibre
n2 = 1.47;    // Cladding refractive index of an optical fibre
lambda_0 = 850e-09;    // wavelength of light, m
V = 2.405;    // Normalized frequency for single mode propagation of the fibre
// As V = %pi*d*sqrt(n1^2-n2^2)/lambda_0, solving for d
d = V*lambda_0/(%pi*sqrt(n1^2-n2^2)*1e-006);    // Core radius, micro-metre
NA = sqrt(n1^2-n2^2);    // Numerical aperture of the fiber
// Since sind(theta_0) = NA, solving for theta_0
theta_0 = asind(NA);    // The maximum acceptance angle of fiber, degree
[deg, m, s] = deg2dms(theta_0);    // Call conversion function
printf("\nThe core radius of the fiber = %4.2f micro-meter", d);
printf("\nThe numerical aperture of fiber = %6.4f ", NA);
printf("\nThe maximum acceptance angle = %d deg %d min %d sec", deg, m, s);

// Result 
// The core radius of the fiber = 3.79 micro-meter
// The numerical aperture of fiber = 0.1718 
// The maximum acceptance angle = 9 deg 53 min 23 sec