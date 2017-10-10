//Optical Fiber communication by A selvarajan
//example 2.3
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given
ncore=1.505//refractive index of core
nclad=1.502//refractive index of cladding
V=2.4//v no. for single mode 
lambda=1300e-9//operating wavelength in m
//to find
NA=sqrt(ncore^2-nclad^2)//numerical aperture
a=V*(lambda)/(2*%pi*NA)//dimension of fiber core in m
//display
mprintf("The numarical aperture =%f",NA);
mprintf("\n Dimension of fiber core =%f um",a*1e6)//multiplication by 1e6 to convert unit from m to um
