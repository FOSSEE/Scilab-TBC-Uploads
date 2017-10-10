clc;
clear;
H=6.626*10^-34 //Plancks constant in J-s
m=9.1*10^-31 //mass in kg
e=1.6*10^-19 //charge in C
V_0=80 //Potential difference in V
a=0.35 //lattice parameter in nm
h=1 //x intercept of parallel plane
k=1 //y intercept of parallel plane
l=1 //z intercept of parallel plane

//calculation
lambda=H/sqrt(2*m*e*V_0) //wavelength in m
d_111=(a/sqrt(h^2+k^2+l^2))*10^-9 //interplanar distance in m
theta1_degrees= floor(asin((lambda)/(2*d_111))*(180/%pi)) //degrees part of angle
theta1_minutes=((asin((lambda)/(2*d_111))*(180/%pi))-theta1_degrees)*60 //minutes part of angle
mprintf("The Braggs angle is = %d degrees and %d minutes",theta1_degrees,theta1_minutes)
//The answer varies due to round off error.
