//Chapter 12
//page no 530
//given
clc;
clear all;
lembda=1550;         //wavelength in nm
c=3*10^5;           //speed of light in km/s
Zs=600;                      //in km
Tfwhm=20;                     //in ps
D=1/1.763^2*[2*%pi*c*Tfwhm^2/(lembda^2*Zs)];  //dispersion constant
printf("\n dispersion constant, D = %0.2f ps/nm/km",D);      //result
