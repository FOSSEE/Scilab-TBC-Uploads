//Chapter 9
//page no 332
//given
clc;
clear all;
L=400;          //in km
dAV=4;          //in ps/km
dTL=L*dAV;      //total chromatic dispersion
printf("dTL =%0.0f ps/nm.km",dTL);
printf("\n or,dTL =%0.1f ns/nm.km",dTL/10^3);
