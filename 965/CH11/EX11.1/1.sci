clc;
clear all;
disp("rate of energy emmission")
A=0.12;//m^2
T=527+273;// K
sigma=5.67*10^(-8);
Eb=sigma*A*T^4;//W
disp("W",Eb,"The total rate of energy emmision, Eb =")
Ibn=sigma*(T/100)^4/10^(-8);// W/m^2 sr
disp("W/m^2 .sr",Ibn,"Intensity of normal radiation , Ibn =")
lmax=2898/T;//mu.m
disp("mu m",lmax, "Wavelength of maximum monochromatic emmissive power = ")
