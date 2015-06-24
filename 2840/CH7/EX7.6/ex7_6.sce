clc;
clear all;
alpha = 0.5; // Attenuation of single mode optical fibre in dB per km
lambda = 1.4; // Operating wavelength of optical fiber in micrometer
d = 8 // Diameter of fiber in micrometer
y = 0.6; // Laser source frequency width
pb = 4.4e-3 * d^2 * lambda^2 * alpha * y;//Threshold optical power in SBS
prs = 5.9e-2 * d^2 * lambda * alpha;//Threshold optical power in SRS
disp('W',pb,'Threshold optical power in SBS');
disp('W',prs,'Threshold optical power in SRS');
