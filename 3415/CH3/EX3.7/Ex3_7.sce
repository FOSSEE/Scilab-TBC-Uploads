//fiber optic communications by joseph c. palais
//example 3.7
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
c=3*10^8//velocity of light in m/s
l=0.3*10^-3//length of cavity in m
lambda=0.82*10^-6//mean (center) wave length in m
n=3.6//refractive index of AlGaAs

//to find
delta_fc=c/(2*l*n)//mode spacing in Hz
delta_lambdac=(lambda^2)*delta_fc/c//wavelength spread in m

mprintf("mode spacing= %f x10^9Hz",delta_fc*10^-9)//for representation
mprintf("\nwavelength spread =%f nm",delta_lambdac*10^9)//multiplication factor 10^9 to convert m to nm
