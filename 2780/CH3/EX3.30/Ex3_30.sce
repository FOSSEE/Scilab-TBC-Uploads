clc
//to calculate maximum resolving power
lambda=5*10^-5 //wavelength of light in cm
N=40000 //total number of lines on grating
//(e+d)=12.5*10^-5 cm
//formula is nmax=(e+d)/lambda
//we get
nmax=2 //order of spectrum
RP=nmax*N //RP=resolving power
disp("the maximum resolving power is RP="+string(RP)+"unitless") 
