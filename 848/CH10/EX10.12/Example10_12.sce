//clear//
//Caption:Maximum number of channels that can be placed in the tuning range
//Example10.12
//page 383
clear;
clc;
close;
Lambda = 1550e-09; //DBR laser operating wavelength
delta_neff = 0.0065; //maximum index change 
delta_Lambda_tune = Lambda*delta_neff; //tuning range in meters
delta_Lambda_signal = 0.02e-09; //source spectral width in meters
delta_Lambda_channel = 10*delta_Lambda_signal;
N = delta_Lambda_tune/delta_Lambda_channel;
disp(N,'The number channels that can operate in this tuning range is N=')
//Result
//The number channels that can operate in this tuning range is N = 50.375  
