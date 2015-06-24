//clear//
//Caption: Finding mean frequency spacing
//Example10.2
//page 343
clear;
clc;
close;
C = 3e08; //free space velocity
delta_Lambda = 0.8e-09; //spectral band in meter
Lambda = 1550e-09;//wavelength in meter
delta_v = C*delta_Lambda/Lambda^2;
disp(ceil(delta_v*1e-09),'Mean Frequency spacing in GHz =') 
//Result
// Mean Frequency spacing in GHz = 100.  
