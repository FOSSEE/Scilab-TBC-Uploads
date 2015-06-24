// Scilab code Ex8.10: Determining angle of reflection by using wavelength of X-ray Page 261 (2010)
lambda = 0.440e-010;    // Wavelength of X-rays, m
d = 2.814e-010;    // Interplanar spacing of rocksalt crystal, m
// 2*d*sin(theta) = n*lambda    **Bragg's law, n is the order of diffraction
// Solving for theta, we have
// theta = asin(n*lambda/(2*d)) 
// Declare a function for converting angle into degrees and minutes
function [d,m] = degree_minute(n)    
         d = int(n);
         m = (n-int(n))*60;
endfunction  
for n = 1:1:5    // For diffraction order from 1 to 5
    theta = asind(n*lambda/(2*d));    // Bragg's angle
    [deg, mint] = degree_minute(theta);    // Call conversion function
    printf("\nTheta%d = %2d degree(s), %2d minute(s)", n, deg, mint);
end
// Result
// Theta1 =  4 degree(s), 29 minute(s)
// Theta2 =  8 degree(s), 59 minute(s)
// Theta3 = 13 degree(s), 33 minute(s)
// Theta4 = 18 degree(s), 13 minute(s)
// Theta5 = 23 degree(s),  0 minute(s)