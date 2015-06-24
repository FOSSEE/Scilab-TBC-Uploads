// Example 9.21;//dark current
clc;
clear;
close;
C=2.998*10^8;//SPEED of light in meter per second
e=1.6*10^-19;//elecronic charge
ht=6.62*10^-34;//plank constt.
h=0.85;//wavelength in micro meters
n=0.64;//efficiency
B=1;//bandwidth in hertz
D=7*10^10;//SPECIFIC DETECTIVITY
a=10;//active dimension in micro meter
Id=((n*sqrt(e*a*10^-6)*h*10^-6)/(ht*C*sqrt(2)*D))^2;//
disp(Id,"Dark current in ampere is")
