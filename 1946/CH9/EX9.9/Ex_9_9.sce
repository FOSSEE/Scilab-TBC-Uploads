// Example 9.9;//multiplication factor
clc;
clear;
close;
e=1.6*10^-19;//elecronic charge
h=850;//wavelength in NANO meter
C=3*10^8;//SPEED of light in meter per second
n=0.65;//efficiency
ht=6.62*10^-34;//plank constt.
I=10;//CURRENT IN MICRO AMPERE
Po=0.5;//output power in micro watt
R=((n*e*h*10^-9)/(ht*C));
Ip=Po*R;//photocurrent in micro ampere
M=I/Ip;//Multilplication factor
disp(M,"Multilplication factor IS")

