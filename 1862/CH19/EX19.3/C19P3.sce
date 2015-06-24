clear
clc
//to find wavelength for minimum sound intensity

// GIVEN:
//refer figure 19-6 from page no. 433
//distance of listener
r2 = 1.2//in meter
//distance between two speaker
D = 2.3//in meters

// SOLUTION
//using equation of interference of sound wave
//using pythagorean formula
//distance from speaker 1
r1 = sqrt((r2^2)+(D^2))//in meters
//difference between distance from two sources
r1_minus_r2 = r1-r2//in meters
//wavelengths for minimum sound intensity
lambda1 = r1_minus_r2*2//in meters
lambda2 = (r1_minus_r2*2)/3//in meters
lambda3 = (r1_minus_r2*2)/5//in meters

printf ("\n\n Distance from speaker 1 r1 = \n\n %.1f m ",r1)
printf ("\n\n Difference between distance from two sources r1_minus_r2 = \n\n %.1f m ",r1_minus_r2)
printf ("\n\n Wavelengths for minimum sound intensity \n\n lambda = %.1f m,%.2f m,%.2f m ",lambda1,lambda2,lambda3)
