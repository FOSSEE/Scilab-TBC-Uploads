
//Chapter 12
//page no 533
//given
clc;
clear all;
Z=10;               //in mm
Tfwhm=22;           //in ps
D=0.5;              //ps/nm/km
Aeff=55;            //in microm^2
A=0.05;             //in km^-1
nsp=1.5;        //spontaneous emission 
F=2;            //amplifier noise
s=3.6*10^3*nsp*F*A*D*Z^3/(Aeff*Tfwhm);
printf("\n sigma = %0.0f ps",s);      //Result

//answer in book is misprint
