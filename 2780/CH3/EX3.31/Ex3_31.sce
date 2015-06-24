clc
//to calculate minimum number of lines in a grating
lambda1=5890 
             //wavelengh in angstrom
lambda2=5896
dlambda=6 //smallest wavelength difference in angstrom
n=2 //order of spectrum 
lambda=(lambda1+lambda2)/2 //average wavelength in angstrom
RP=lambda/dlambda //RP=resolving power
N=RP/n
disp("minimum number of lines in a grating is N="+string(N)+"unitless")
