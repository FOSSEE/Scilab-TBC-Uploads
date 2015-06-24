//Chapter 12
//page no 481
//given
clc;
clear all;
E=0.182;            //from table 12-11 for 2dB dispersion penalty
fb=622;         //in Mb/s
dl=4;           //in nm
ofdisp=3;       //in ps/km-nm
Dmax=E/(10^-6*fb*dl);
printf("\n Dmax is %0.1f ps/nm",Dmax);   
Lmax=Dmax/ofdisp;
printf("\n Maximum link distance is %0.1f km",Lmax); 
//Answer in the book is rounded
