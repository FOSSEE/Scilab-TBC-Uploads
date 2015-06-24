clc
//to calculate value of planck's constant
e=1.6*10^-19 //in C
V=100*10^3 //voltage in KV
c=3*10^8 //light speed in m/s
lambdamin=12.35*10^-12 //wavelength in m
h=e*V*lambdamin/c
disp("the value of plancks constant is h="+string(h)+"J-s")
