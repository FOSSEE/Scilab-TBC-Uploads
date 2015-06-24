// Scilab Code Ex4.5:: Page-4.7 (2009)
clc; clear;
mu = [1.33 1.65 1.55];      // Refractive indices of the material
// As mu = tand(ip), solving for ip
ip = atand(mu);     // Brewster's law gives polarizing angle, degrees
for i =1:1:3    
printf("\nmu = %4.2f, ip = %4.1f degrees", mu(i), ip(i));
end

// Result 
// mu = 1.33, ip = 53.1 degrees
// mu = 1.65, ip = 58.8 degrees
// mu = 1.55, ip = 57.2 degrees  
