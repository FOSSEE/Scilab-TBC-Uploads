clc;
clear all;
l = 16; // Length of optical fiber in Km
Pi = 240e-6; // Mean optical length launched in optical fiber in Watts
Po = 6e-6; // Mean optical power at the output in watts
alpha = 10*log10(Pi/Po);//Signal attenuation in fiber
disp('dB',alpha,'Signal attenuation in fiber')
alpha1 = alpha/l;//Signal attenuation per km of the fiber
disp('dB/km',alpha1,'Signal attenuation per km of the fiber');
