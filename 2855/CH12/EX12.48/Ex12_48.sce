//chapter 12
//page no 540
//exa 12_48
//given
clear;
clc;
D=0.5;          //ps/nm-km
Tb=80;          //bit period in ps
l=1.5;      //in nm
Zr=Tb/(D*l);         //Modulator spacing in km
printf("\n Maximum modulator spacing Zr = %0.2f km",Zr);
