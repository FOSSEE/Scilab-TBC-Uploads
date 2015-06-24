// Example 9.18;//efficiency
clc;
clear;
close;
e=1.6*10^-19;//elecronic charge
h=1300;//wavelength in nano meter
C=3*10^8;//SPEED of light in meter per second
R=0.374;//Responsivity is in ampere per watt
ht=6.62*10^-34;//plank constt.
n=((R*ht*C)/(e*h*10^-9))*100;
disp(n,"Efficiency is")
