clc;
clear all;
delta = 0.02; // Relative refractive index
n1 = 1.48; // Refractive index of the core
r = 1-delta; // r = (n2/n1)
thetac = asind(r); // Critical Angle
disp('Degrees',thetac,'The critical angle of fiber is') 
