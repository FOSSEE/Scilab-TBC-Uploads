//clear//
//Caption: Finding the center wavelength 
//Example10.1
//page 343
clear;
clc;
close;
delta_v = 14e12; //optical bandwidth
Lambda = 1520; //spectral band
C = 3e08; //free space velocity
delta_Lambda = (Lambda^2)*delta_v/C;
disp(delta_Lambda*1e-09,'spectral band in nano meter') 
//Result
//spectral band in nano meter = 107.81867 
