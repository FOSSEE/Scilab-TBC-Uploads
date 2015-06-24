clc;
clear all;
deltax = 4e-10; // Electron in the position in meters
h = 6.626e-34; // Planck's constant
deltap = h/deltax;
disp('(Kg.m)/s',deltap,'The uncertainity in momentum is')
