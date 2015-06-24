// Example 9.10.a;//specific detectivity 
clc;
clear;
close;
A=75*50*10^-12;//
e=1.6*10^-19;//elecronic charge
h=1.3;//wavelength in micro meter
C=3*10^8;//SPEED of light in meter per second
n=0.55;//efficiency
ht=6.62*10^-34;//plank constt.
Id=8;//CURRENT IN nano AMPERE
NEP=((ht*C)*sqrt(2*e*Id*10^-9))/(n*e*h*10^-6);//noise equivalent power in watt
D=(sqrt(A)/NEP);//specific detectivity
disp(D,"specific detectivity is")
