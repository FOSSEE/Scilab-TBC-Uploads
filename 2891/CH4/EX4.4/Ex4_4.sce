//Exa 4.4
clc;
clear;
close;
//given :
f=10 //frequency in Ghz
f=10*10^9 //frequency in hertz
c=3*10^8 //speed of light in m/s
lambda=c/f //wavelength in meter
N=50 // number of elements
d=0.5*lambda // element spacing in meter
Beta=2*(%pi)/lambda // phase shift
alpha=Beta*d // progressive phase shift in radians
l=N*d // Araay length in meter
disp(alpha,"progressive phase shift in radians:")
disp(l,"Array length in meter")
