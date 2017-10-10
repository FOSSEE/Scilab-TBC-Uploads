clc;
clear;
sin_theta1=0.2 //angle in radian
sin_theta2=0.3 // angle in radian
lambda = 5000*10^-9 //wavelength in cm
d=2.5 //width of the grating surface in cm

//calculations
e=lambda/(sin_theta2-sin_theta1) //in cm
N=d/e //number or rulings
Rp=2*N

printf("Resolving power = %d",ceil(Rp))
