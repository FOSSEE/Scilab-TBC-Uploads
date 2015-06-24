//Chapter 12
//page no 530
//given
clc;
clear all;
D=0.2;                      //dispersion constant in ps/nm/km
Tfwhm=18;                     //ps
Zs=0.25*Tfwhm^2/D;         // Characteristic length
printf("\n Zs = %0.0f km",Zs);      //answer in book is miscalculated

