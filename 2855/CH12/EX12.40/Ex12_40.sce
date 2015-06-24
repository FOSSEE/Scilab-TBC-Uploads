//Chapter 12
//page no 534
//given
clc;
clear all;
D=0.5;              //Dispersion constant ps/nm/km
Ts=22;              //Pulse width in ps
fb=10;              //system transmission rate in Gb/s
Z1=1;                //System total length Mm
Z2=10;                //System total length Mm
sa1=8.6*D*D*Z1*Z1*sqrt(fb-0.99)/22/2;       //standard deviation based on accoustic effect
sa2=8.6*D*D*Z2*Z2*sqrt(fb-0.99)/22/2;       //standard deviation based on accoustic effect
printf("\n For Z=1000km ,sigma acoustic  = %0.2f ps ",sa1);      //Result
printf("\n For Z=10000km ,sigma acoustic  = %0.0f ps ",sa2);      //Result

