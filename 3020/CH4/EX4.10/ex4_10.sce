clc;
clear all;
V = 12000; // Volume of the room in cubic meters
T = 1.5; // Reverberation time in seconds
a = 0.4; // Absorption coefficient of interior surface in sabine per square meter
s = (0.163*V)/(a*T);//The total surface area 
disp('m^2',s,'The total surface area is')
// Wrong answer printed in textbook..checked in calculator also..
