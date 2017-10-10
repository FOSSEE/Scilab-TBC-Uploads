//Optical Fiber communication by A selvarajan
//example 16.3
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
alpha=0.2//fiber loss in dB/Km
LA=50//Amplifier spacing in Km
G=(alpha*LA)//gain in fiber
PbyPo=G*log(G)/(G-1)//Multiple of power required by single soliton
mprintf('Multiple of power required by single soliton =%f ',PbyPo)// the answer is slightly varing due to rounding error
