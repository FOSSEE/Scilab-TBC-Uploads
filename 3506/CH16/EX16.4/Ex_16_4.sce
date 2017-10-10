//Optical Fiber communication by A selvarajan
//example 16.4
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
lambda=1.55;//operating wavelength in um
LA=50//Amplifier spacing in Km
qo=6//Half of separation between two neighbouring solitons in normalized units
Beta2=-1//dispersion regime ps^2/Km
B=1/(4*(qo)^2*abs(Beta2))//bandwidth in THz
mprintf('Communication Link bitrate is limited to =%f GHz',B*10^3)// Multiplication by 10^3 to convert unit fron THz to GHz
//the answer is wrong
