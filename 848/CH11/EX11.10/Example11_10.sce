//clear//
//Caption: Upper bound on input optical signal power
//Example11.10
//page 415
clear;
clc;
close;
etta = 0.65; //Quantum efficiency
nsp = 2; // population inversion between two levels
R =50; //load resistance inohms
Lambda = 1550e-09; //operating wavelength in meters
T = 300; //room temperature in kelvins
kB = 1.38054e-23; //boltzmann's constant
h = 6.6256e-34; //plank's constant
C = 3e08; //free space velocity in m/s
V = C/Lambda; //frequency in Hz
q = 1.602e-19; //charge in columbs
Ps_in = kB*T*h*V/(R*nsp*(etta^2)*(q^2));
disp(Ps_in*1e06,'Upper bound on input optical signal power in micro watts Ps_in=')
//Result
//Upper bound on input optical signal power in micro watts Ps_in =  489.81635 
