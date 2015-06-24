// Example 9.5.b;//Incident optical power
clc;
clear;
close;
E=1.5*10^-19;//energy in joule
e=1.6*10^-19;//elecronic charge
If=1.5*10^-6;//forward current in ampere
C=3*10^8;//SPEED of light in meter per second
n=0.65;//quantum efficiency
ht=6.62*10^-34;//plank constt.
h=((ht*C)/E)*10^6;//Wavelength
R=(n*e)/(E);//Responsivity in ampere per watt
Po=(If/R)*10^6;//Output power in micro watt
disp(Po,"Output power in micro watt")
