clc;
clear all; 
m = 9.1e-31; // Mass of an electron in Kg
e = 1.6e-19; // Charge of an electron in Columbs
h = 6.626e-34; // Planck's Constant
V1 = 150; // Potential difference in Volts (case1)
lambda1 = h/(sqrt(2*m*e*V1));
disp('m',lambda1,'The de-broglie wavelength when V=150 volts is ') 
V2 = 5000; // Potential difference in Volts (case2)
lambda2 = h/(sqrt(2*m*e*V2));
disp('m',lambda2,'The de-broglie wavelength when V=5000 volts is ')
V3 = 400; // Potential difference in Volts (case3)
lambda3 = h/(sqrt(2*m*e*V3));
disp('m',lambda3,'The de-broglie wavelength when V=400 volts is ')
//slight variation in answer than in textbook
