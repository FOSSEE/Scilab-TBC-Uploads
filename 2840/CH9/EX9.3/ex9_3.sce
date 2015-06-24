clc;
clear all;
h = 6.62e-34; // Planck's constant in J.s
c = 3e8; // Velocity of ligth in air
t = 18000; // Time of glow - (5*3600) in seconds
P = 30 //Power in watts
lambda = 5893e-10; // Wavelength of emitted ligth in meters
E = (h*c)/lambda; // Energy of a photon
n = (P*t)/E; // let n be the number of photons emitted in 5 hours
disp('',n,'Number of photons emitted in 5 hours is');
