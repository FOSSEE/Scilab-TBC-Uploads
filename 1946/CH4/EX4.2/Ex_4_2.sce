// Example 4.2:Outpit Power
clc;
clear;
close;
h=0.82;// Wavelength in micro meters
alpha = 0.5;//Attenuation loss in dB/Km
L=3;// Length of fiber in km
Pi=1;//Input power in Milli Watt
X= ((alpha*L)/10);
Po=Pi*(10^(- X));//Output power in milli watt
disp(Po,"output power in mili watt")
