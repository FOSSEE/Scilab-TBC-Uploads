clc;
clear all;
sigma1 = 405e6; // Principal stress in newton per square meters
sigma2 = -105e6; //  Principal stress in newton per square meters
Tmax = (sigma1-sigma2)/2;
disp('N/m^2',Tmax,'The maximum shearing stress is')
