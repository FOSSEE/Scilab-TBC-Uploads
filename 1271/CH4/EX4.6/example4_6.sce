clc 
// Given that
D = 5e-3 // diameter of laser in meter
lambda = 6.943e-7 // wavelength of light in meter
f =0.1 // focal length in meter
P = 0.1 // power of laser in watt
// Sample Problem 6 on page no. 4.27
printf("\n # PROBLEM 6 # \n")
r = (D / 2)// calculation for 
theta = (0.637 * lambda) / r// calculation for angular spread
areal_spread = (f * theta)^2// calculation for areal spread
I = P / areal_spread// calculation for intensity
printf("Standard formula used \n theta=0.637*lambda/r,\n areal spread = (theta*D)^2,\n I=P/A\n")
printf("\n Areal spread = %e square meter,\n Intensity = %e watt/square meter",areal_spread,I)
