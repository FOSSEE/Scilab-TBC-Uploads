// Example 7.3 //Wavelength and Incident optical power
clc;
clear;
close;
E=1.5*10^-19;//energy in joule
e=1.6*10^-19;//elecronic charge
If=3*10^-6;//forward current in ampere
C=3*10^8;//Speed of light in meter per second
n=0.6;//quantum efficiency
ht=6.62*10^-34;//plank constt.
h=((ht*C)/E)*10^6;//Wavelength
R=(n*e)/(E);//Responsivity in ampere per watt
Po=(If/R)*10^6;//Output power in micro watt
disp(h,"wavelength in micro meter")
disp(Po,"Output power in micro Watt")
