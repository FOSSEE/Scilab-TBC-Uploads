clc;
clear all;
I = 20e-3; // Tube current in Ampere
L = 1; // Source to film distance in meters
t = 60; // Exposure time in seconds
EF =(I*t)/(L^2);//The exposure factor
disp('',EF,'The exposure factor is')
