//clear//
//Caption: Four-wave mixing-calculation of power generated due to the
//interaction of signals at different frequencies
//Example12.3
//page 438
clear;
clc;
close;
chi1111 = 6e-15;//Third order nonlinear suceptibility cubicmeter/W.s
D =3; //degenerating factor
Leff = 22e03;//effective length in meters
Aeff = 6.4e-11;//effective cross-sectional area of the fiber in square meter
etta = 0.05;//quantum efficiency
Lambda = 1540e-09; //Wavelength in single mode fibers in meter
C = 3e08; //free space velocity in m/sec
alpha =0.0461; //atttenuation per Km
L =75; //fiber link length in Km
P = 1e-03; //each channel input power of 1 milli watts
n = 1.48; //refractive index
k = ((32*(%pi^3)*chi1111)/((n^2)*Lambda*C))*(Leff/Aeff); //nonlinear interaction constant
P112 = etta*(D^2)*(k^2)*(P^3)*exp(-alpha*L);
disp(P112*1e03,'Power generated due to interaction of signals at different freq. in milli watts P112=')
//Result
// Power generated due to interaction of signals at different freq. in milli watts P112= // 5.798D-08  
