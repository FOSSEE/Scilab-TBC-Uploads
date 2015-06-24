// Example 9.5.a;//WAVELENGTH
clc;
clear;
close;
E=1.5*10^-19;//energy in joule
e=1.6*10^-19;//elecronic charge
If=1.5*10^-6;//forward current in ampere
C=3*10^8;//SPEED of light in meter per second
n=0.65;//quantum efficiency
ht=6.62*10^-34;//plank constt.
h=((ht*C)/E)*10^6;//Wavelength
disp(h,"wavelength in micro meter")

