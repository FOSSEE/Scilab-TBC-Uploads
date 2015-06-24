// Scilab Code Ex2.3: Page:79 (2011) 
clc;clear;
c = 3e+8;....// Speed of light, m/s
v = 2e+8;....// Velocity of the proton, m/s
m0 = 1.6e-27;....// Rest mass of proton, kg
h = 6.62e-34;....// Plancks constant,J-s
lambda = (h*sqrt(1-v^2/c^2))/(m0*v);
printf("\nThe wavelength of matter wave associated with the proton = %5.3e m", lambda);

// Result
//  The wavelength of matter wave associated with the proton = 1.542e-15 m 
