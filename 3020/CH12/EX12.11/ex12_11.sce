clc;
clear all;
n1 = 1.50; // Refractive index of core
n2 = 1.45 ; // Refractive index of cladding
delta = (n1-n2)/n1; // Relative refractive index
NA = n1*sqrt(2*delta) 
disp('',NA,'The numerical aperture is')
ia = asind(NA);// Acceptance angle
disp('Degrees',ia,'The acceptace angle is')
thetac = asind(n2/n1);// Critical Angle
disp('Degress',thetac,'The critical angle of fiber is')

// Slight variation in the answer of critical angle as compared to book... Checked in calculator... Book's mistake
