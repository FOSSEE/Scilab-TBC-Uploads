//Chapter 12
//page no 535
//given
clc;
clear all;
D=0.45;              //dispersion coefficient in ps/nm/km
Ts=22;              //Pulse width in ps
l=0.5;         //length in nm
Lcollision=2*Ts/l/D;        //collision length  in km
printf("\n Lcollision  = %0.1f km ",Lcollision);      //Result

