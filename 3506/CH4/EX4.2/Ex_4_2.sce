//Optical Fiber communication by A selvarajan
//example 4.2
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given  
lambda=1.3//wavelength of laser in um
w=5//active layer width in um
d=2//active layer thickness in um
n1=3.5//refractive index of core
n2=3.49//refractive index of cladding
//to find
k0=2*%pi/lambda//propagation constant
row=0.3//confinement factor
neff=sqrt(n2^2+row)//effective refractive index
D=k0*d*(sqrt(n1^2-n2^2))//normalized thickness
W=k0*w*(sqrt(neff^2-n2^2))//normalized width// the answer given in textbook is wrong
Wlat=w*(sqrt(2*log(2)))*(0.32+2.1*(W^-1.5))//Full width lateral at half maximum in um/ the answer given in textbook is wrong
Wtra=d*(sqrt(2*log(2)))*(0.32+2.1*(D^-1.5))//Full width transverse at half maximum in um/ the answer given in textbook is wrong
mprintf("Normalized thickness=%f",D)//The answers vary due to round off error
mprintf("\n Normalized width =%f",W)//multiplication by 1e9 to convert unit from s to ns/// the answer given in textbook is wrong
mprintf("\nFull width lateral at half maximum =%f um",Wlat)//multiplication by 1e-6 to convert unit from Hz to MHz//// the answer given in textbook is wrong
mprintf("\nFull width transverse at half maximum =%f um",Wtra)//multiplication by 1e-6 to convert unit from Hz to MHz//// the answer given in textbook is wrong
