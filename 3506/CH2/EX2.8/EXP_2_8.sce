//Optical Fiber communication by A selvarajan
//example 2.8
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
M=1000;//modes supported
lambda=1.3;//operating wavelength in um
n1=1.5;//refractive index of core
n2=1.48;//refractive index of cladding
//to find
V=sqrt(2*M)// normalised frequency V no.
NA=sqrt(n1^2-n2^2)//numerical apperture
R=lambda*V/(2*%pi*NA)//radius of fiber in um
//display
mprintf("Core Radius=%fum",R)//The answer provided in the textbook is wrong

