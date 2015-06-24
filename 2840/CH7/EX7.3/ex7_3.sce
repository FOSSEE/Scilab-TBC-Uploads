clc;
clear all;
NA = 0.15 ; // Numerical Aperture of fiber
n2 = 1.55; // Refractive index of cladding
n0w = 1.33; // Refractive index of water
n0a = 1; // Refractive index of air
n1 = sqrt(NA^2 + n2^2);
NAW = (sqrt(n1^2 -n2^2))/n0w;
thetaa = asind(NAW);//Acceptance angle in water
disp('degree',thetaa,'Acceptance angle in water is '); 
