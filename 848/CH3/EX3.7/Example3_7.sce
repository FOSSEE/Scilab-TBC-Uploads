//clear//
//Caption:Program to Find out the Material Dispersion 
//Example3.7
//page107
clear;
clc;
Lamda = 800e-09;//Wavelength in meter
sigma_Lamda_LED = 40e-09;//spectral width in meters
pulse_spread = 4.4e-12;//pulse spread in sec/meter
mat_dispersion = pulse_spread/sigma_Lamda_LED
disp(mat_dispersion,'material dispersion in seconds/square meter')
//Result
//material dispersion in seconds/square meter     0.00011 
