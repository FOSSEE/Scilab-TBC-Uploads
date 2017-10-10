//Optical Fiber communication by A selvarajan
//example 16.5
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
LT=10000//Transmission distance in Km
alpha=0.2//fiber loss in dB/Km
lambda=1.55*10^-6;//operating wavelength in m
Gama=2//nonlinearity in /W-Km
LA=50//Amplifier spacing in Km
D=1//dispersion parameter ps/(Km-nm)
FG=3.518//Fiber gain factor
fj=0.1//timing jitter factor
h=6.62607004 * 10-34 //planck's constant in m2 kg / s
nsp=2//spontaneous emission factor
qo=6//Half of separation between two neighbouring solitons in normalized units
B1=((9*%pi*fj^2*LA)/(nsp*FG*qo*lambda*h*Gama*D*10^-3))//variable converting la
B2=B1^(1/3)//variable
B=B2/LT//bandwidth in THz
mprintf('Communication Link bitrate is limited to =%f Gb/s',B*10^3)// Multiplication by 10^3 to convert unit fron THz to GHz
//the answer is wrong
