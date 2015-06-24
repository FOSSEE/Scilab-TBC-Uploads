// Scilab Code Ex8.7: Page-432 (2011)
clc;clear;
L = 0.2;....// Length of a magnetostrictive hydrophone, m
lambda = 2*L;....// Wavelength of ultrasonic wave, m
v = 4900;....// Velocity of ultrasonic beam in water, m/s
f = v/lambda;....// Fundamental frequency of ultrasonic, KHz
printf("\nThe fundamental frequency of a magnetostrictive hydrophone = %4.2f KHz", f/1e+03);

// Result
// The fundamental frequency of a magnetostrictive hydrophone = 12.25 KHz 