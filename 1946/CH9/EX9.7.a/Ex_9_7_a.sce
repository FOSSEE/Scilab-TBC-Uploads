// Example 9.7.a;//responsivity
clc;
clear;
close;
C=3*10^8;//SPEED of light in meter per second
n=0.50;//quantum efficiency
h=900;//wavelength in nano meter
ht=6.62*10^-34;//plank constt.
R=((n*h)/1248);//responsivity
disp(R,"Responsivity is in ampere per watt")
