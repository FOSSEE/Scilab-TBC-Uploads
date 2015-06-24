clc
//to calculate resolving power of grating 
N=15000 //total number of lines on grating
lambda=6*10^-5 //wavelength in cm
n=2 //order of spectrum
RP=n*N
disp("resolving power is RP ="+string(RP)+"unitless")
//to calculate smallest wavelength difference that can be resolved with a light of wavelength 6000angstrom in the second order
dlambda=lambda/(n*N)
disp("smallest wavelength difference dlambda="+string(dlambda)+"cm")
