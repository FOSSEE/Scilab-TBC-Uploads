// Example 7.1 //WAVELENGTH
clc;
clear;
close;
E=1.35//energy gap in electron-volt
e=1.6*10^-19;//elecronic charge
C=3*10^8;//Speed of light in meter per second
ht=6.63*10^-34;//plank constt.
h=((ht*C)/(E*e))*10^6;//Wavelength
disp(h,"wavelength in micro meter")
