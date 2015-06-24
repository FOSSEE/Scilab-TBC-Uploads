clc;
clear all;
n1 = 1.50; // Refractive index of core
NA = 0.26 ; // Numerical Aperture
d = 100e-6; // Diameter of core in fiber in meter
lambda = 1e-6; // Wavelength of source in meter
n2 = sqrt(n1^2-NA^2); //The refractive index of cladding 
disp('',n2,'The refractive index of cladding is')
ia = asind(NA);// Critical Angle
disp('Degrees',ia,'The acceptace angle is')
N = 4.9*((d*NA)/lambda)^2 // Number of modes propogating through fiber is
disp('',N,'Number of modes propogating through fiber is')
