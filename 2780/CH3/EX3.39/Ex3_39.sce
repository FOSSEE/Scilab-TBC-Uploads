clc
//to calculate resolving power in the second order
N=6*10^4 //N=total number of lines on grating
n=2 //order of spectrum
RP=n*N //RP=resoling power
disp("the resolving power is RP="+string(RP)+"unitless")
//to calculate smallest wavelength
lambda=6000*10^-8 //wavelength in cm
n=3 //order of spectrum
dlambda=lambda/(n*N)
disp("smallest wavelength that can be resolved in the third order in 6000angstrom wavelength region is dlambda="+string(dlambda)+"cm") 
