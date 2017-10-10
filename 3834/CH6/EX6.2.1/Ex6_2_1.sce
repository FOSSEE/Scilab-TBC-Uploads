//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 6.2.1
//windows 8
//Scilab version-6.0.0
clc;
clear ;
//given

a1=12.45E-6;//radius of the cladding for silica fiber
a=4.15E-6;//radius of the core for silica fiber
w0=5.15E-6;//in m
lambda=1600E-9;//wavelength in m
x=exp(-2*(a1^2/w0^2));
y=1-x;
Ploss=-10*log10(y);//power leakage in dB

mprintf("Possible power leakage= %.2f micro-dB",Ploss*1e6);//multiplication by 1e6 to convert unit from dB to micro dB
