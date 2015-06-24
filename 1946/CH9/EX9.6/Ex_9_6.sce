// Example 9.6;//WAVELENGTH
clc;
clear;
close;
E=1.43//energy gap in electron-volt
e=1.6*10^-19;//elecronic charge
C=3*10^8;//SPEED of light in meter per second
ht=6.62*10^-34;//plank constt.
h=((ht*C)/(E*e))*10^6;//Wavelength
disp(h,"wavelength in micro meter")
