//Optical Fiber communication by A selvarajan
//example 16.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
lambda=850;//operating wavelength in nm
Beta2=-1//dispersion regime ps^2/Km
Gama=2//nonlinearity in /W-Km
TFWHM=10//fundamental soliton width in ps
To=TFWHM/1.763//pulse width in ps
Ppeak=1/(Gama*(To^2))//peak power in W
mprintf("Peak power required to maintain fundamental soliton=%fmW",Ppeak*10^3)//multiplication by 10^3 is to convert the unit from w to mW
