
// Example 7.4 //responsivity
clc;
clear;
close;
n=20;//efficiency
e=1.6*10^-19;//elecronic charge
h=0.80;//wavelength in micro meter
C=3*10^8;//SPEED of light in meter per second
ht=6.62*10^-34;//plank constt.
R=((n/100)*e*h*10^-6)/(ht*C);
disp(R,"Responsivity is in Ampere per Watt")
