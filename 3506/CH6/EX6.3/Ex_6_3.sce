//Optical Fiber communication by A selvarajan
//example 6.3
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
lamda=1.3;//wavelength in um
nf=1.51;//Film refractive index
t=1.5;//Film thickness in um
ns=1.5//Waveguide refractive index
na=1//refractive index of air
V=(2*%pi*t/lamda)*sqrt(nf^2-ns^2)//V-number
a=(ns^2-na^2)/(nf^2-ns^2)//asymmetry parameter of the waveguide
Vc=atan(a^0.5)//cutoff V-number
mprintf("V-number=%f",V)
mprintf("\nasymmetry parameter of the waveguide=%f",a)
mprintf("\nCutoff V-number=%f",Vc)
