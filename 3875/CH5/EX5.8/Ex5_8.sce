clc;
clear;
theta=10 //angle in degree
d_theta=3 //angle in degree
d_lambda=5*10^-9 //wavelength in cm
k=2

//calculation 
lambda=(sind(theta)*d_lambda)/(cosd(theta)*(d_theta/(60*60))*(%pi/180)) // wavelength in cm
N=lambda/(d_lambda*k) //number of lines
Ne = (N*k*lambda)/sind(theta)

printf("Minimum grating width required = %1.1f cm",Ne)
