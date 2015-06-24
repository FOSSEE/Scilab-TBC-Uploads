clc;
clear all;
deltax = 1e-9; // Electron in position in meters
m = 9.1e-31; // Mass of th electron in Kg
h = 6.6e-34; // Planck's Constant
deltap = h/deltax;
deltav = deltap/m;
disp('m/s',deltav,'The minimum uncertainity in velocity is')
// Slight variation in answer as compared to textbook
