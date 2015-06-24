//Chapter 9
//page no 300
//given
clc;
clear all;
Po=8;           //in mW
Pi=50;              //in mW
l=15;           //in km
TA=-10*log10(Po/Pi);
printf("\n Total fibre Attenuation,L = %0.2fdB/%0.0fkm \n",TA,l);
Alpha=TA/l;     
printf("\n Alpha is  = %0.2f dB/km\n",Alpha);
