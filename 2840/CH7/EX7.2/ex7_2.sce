clc;
clear all;
n1 = 1.49; // Refractive index of first medium
n2 = 1.44; // Refractive index of second medium
delta = (n1-n2)/n1; // Index difference
NA = n1* sqrt(2*delta);
disp('',NA,'Numerical Aperture of fiber is');
thetaa = asind(NA);
disp('degree',thetaa,'Acceptance angle is ');
