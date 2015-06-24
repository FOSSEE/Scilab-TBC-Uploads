// Example 9.19.a;//OPTICAL POWER
clc;
clear;
close;
Ip=10^-6;//optical current in ampere
e=1.6*10^-19;//elecronic charge
C=3*10^8;//SPEED of light in meter per second
n=0.50;//quantum efficiency
h=0.9;//wavelength in nano meter
ht=6.62*10^-34;//plank constt.
R=((n*e*h*10^-6)/(ht*C));//responsivity
Po=(Ip/R)*10^6;//Output power in micro watt
disp(Po,"Output power in  micro watt")

