//Optical Fiber communication by A selvarajan
//example 16.2
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
lambda=1.55;//operating wavelength in um
Beta2=-1//dispersion regime ps^2/Km
B=10//bitrate in Gb/s
two_qo=12//separation between two neighbouring solitons in normalized units
LT=%pi*exp(two_qo/2)/(8*(two_qo/2)^2*abs(Beta2)*10^-24)/(B^2*(10^18))//distance transmission limit in Km
mprintf('For 10Gb/s bit rate , transmission distance is limited to =%f Km',LT)//the answer is different because of rounding off 

