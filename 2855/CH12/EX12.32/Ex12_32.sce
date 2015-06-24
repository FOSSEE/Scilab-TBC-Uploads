




//Chapter 12
//page no 518
//given
clc;
clear all ;
l=1550;     //wavelength in nm
fb=10;      //system bit rate Gb/s
Df=17;      //fiber dispersion in ps/nm-km
L=10^5/Df/fb^2;     //fiber length in km 
printf("\n Transmission length is %0.1f km",L);
fb2=2.5;      //system bit rate Gb/s
disp("for fb=2.5 Gb/s")
L2=10^5/Df/fb2^2;       //fiber length in km 
printf(" Transmission length is %0.0f km",L2);//result misprint in book
