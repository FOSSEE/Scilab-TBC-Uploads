




//Chapter 12
//page no 530
//given
clc;
clear all;
l=1557;         //wavelength in nm
c=3*10^5;           //speed of light in km/s
Zs=550;                      //in km
D=0.25;                     //in ps/nm/km
Tfwhm=sqrt(1.763^2*l^2*D*Zs/(2*%pi*c));//Soliton pulse width 
printf("\n Tfwhm = %0.0f ps",Tfwhm);      //Result
