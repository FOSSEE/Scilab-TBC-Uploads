clc;
clear;
lambda=5000*10^-8 //wavelength in cm
N=15000 //lines per inch
k=3
e=1/4000 //in cm

//calculation
sin_theta = (k*lambda)/e //in radian
cos_theta = sqrt(1-sin_theta^2) // in radian
disspersive_power = k/(e*cos_theta) 

printf("Dispersive power of the grating in third order spectrum = %d",disspersive_power)


