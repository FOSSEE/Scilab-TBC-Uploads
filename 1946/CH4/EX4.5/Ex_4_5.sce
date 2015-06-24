// Example 4.5:Outpit Power
clc;
clear;
close;
h=1.3;// Wavelength in micro meters
alpha = 0.8;//Attenuation loss in dB/Km
L=30;// Length of fiber in km
Pi=200;//Input power in micro Watt
X= ((alpha*L)/10);
Po=Pi*(10^(- X));//Output power in micro watt
disp(Po,"output power in micro watt")
