clc();
clear;
//Given :
sm_min = 11*10^-12;// Minimum displacement amplitude in m
sm_max = 11*10^-6;// Maximum displacement amplitude in m
v = 343;// speed of sound in m/s
f = 1000; // frequency in Hz
rho_0 = 1.21; // density of air in kg/m^3
// Sound intensity = (rho_0*v*omega^2*sm^2)/2
//omega = 2*pi*f
I_max = (rho_0*v*((2*%pi*f)^2)*(sm_max^2))/2; // Maximum Intensity
I_min =  (rho_0*v*((2*%pi*f)^2)*(sm_min^2))/2; // Minimum Intensity
Ratio = I_max/I_min ;
printf("I_max/I_min = %.1f x 10^12 ", Ratio*10^-12);
