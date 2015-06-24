// Example 9.19.a;//responsivity
clc;
clear;
close;
e=1.6*10^-19;//elecronic charge
C=3*10^8;//SPEED of light in meter per second
n=0.50;//quantum efficiency
h=0.9;//wavelength in nano meter
ht=6.62*10^-34;//plank constt.
R=((n*e*h*10^-6)/(ht*C));//responsivity
disp(R,"Responsivity is in ampere per watt")
