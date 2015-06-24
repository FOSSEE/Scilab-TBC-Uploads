// Example 9.15;//multiplication factor
clc;
clear;
close;
e=1.6*10^-19;//elecronic charge
h=1.3;//wavelength in micro meter
C=3*10^8;//SPEED of light in meter per second
n=0.5;//efficiency
ht=6.62*10^-34;//plank constt.
I=8;//CURRENT IN MICRO AMPERE
Po=0.4;//output power in micro watt
R=((n*e*h*10^-6)/(ht*C));
Ip=Po*R;//photocurrent in micro ampere
M=I/Ip;//Multilplication factor
disp(M,"Multilplication factor IS")

