
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 6.7
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
A=(100)*(50);//area in u-meter^2
Id=10e-9;//Measured dark current in nanoampere
eta=0.6;//Quantum efficiency is 60%
lamda=1.2e-6;//operating wave length in micrometer
e=1.6e-19;//charge of an electron in columb
h=6.62e-34;//plank's constant in S.I units
c=3e8;//velocity of light in m/s

NEP=[h*c*sqrt(2*e*Id)]/(eta*e*lamda);//noise equivalent power in watts
D=sqrt(A*10^-12)/(NEP);//Specific directivity of the device
mprintf("\n Noise equivalent power is=%.2f *10^-14 W",NEP*10^14);//multiplication by10^-14 to change the unit 10^-14 W
mprintf("\n Specific directivity is=%2.f *10^8m Hz^(1/2)/W",D/10^8)//multiplication by10^8 to change the unit 10^8 m Hz^(1/2)/W
