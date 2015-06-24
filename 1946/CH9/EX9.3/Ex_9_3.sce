// Example 9.3;//responsivity
clc;
clear;
close;
E=0.75;//energy gap in electron volt
C=3*10^8;//SPEED of light in meter per second
n=0.60;//quantum efficiency
ht=6.62*10^-34;//plank constt.
h=((ht*C)/(E*1.6*10^-19))*10^9;//wavelength in nano meter
R=((n*h)/1248);//responsivity
disp(R,"Responsivity is in ampere per watt")
