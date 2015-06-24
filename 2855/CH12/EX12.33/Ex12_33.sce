//Chapter 12
//page no 518
//given
clc;
clear all;
lembda=1550;     //wavelength in nm
Df=17;      //fiber dispersion in ps/nm-km
L=80     //fiber length in km 
fb=sqrt(10^5/Df/L)
printf("\n Maximum bit rate fb = %.1f Mb/s",fb);
