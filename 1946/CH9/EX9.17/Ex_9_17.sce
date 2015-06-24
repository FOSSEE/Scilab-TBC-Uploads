// Example 9.17;//responsivity and recieved optical power
clc;
clear;
close;
e=1.6*10^-19;//elecronic charge
h=0.9;//wavelength in micro meter
C=3*10^8;//SPEED of light in meter per second
n=0.50;//efficiency
ht=6.62*10^-34;//plank constt.
I=1;//CURRENT IN MICRO AMPERE
R=((n*e*h*10^-6)/(ht*C));
Po=(I*10^-6)/R;//
disp(R,"Responsivity is in ampere per watt")
disp(Po,"Output power in m watt")

