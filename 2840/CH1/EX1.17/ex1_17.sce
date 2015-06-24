clc;
clear all;
l = 1; // Length of beam in meter
dp = 10e-3; // Depression in meter
x = 0.4 // Distance at which depression is to be found in meter
dpx = (dp*3*(x-x^2+x^3))/l^3;
disp('m',dpx,'Depression at x = 0.4m is ');
  
