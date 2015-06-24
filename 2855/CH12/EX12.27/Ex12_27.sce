//Chapter 12
//page no 494
//given
clc;
clear all;
Voutp=28;           //in dB
Pin=1;            //in mW
R=800;          //in V/W
Vavg=10^(Voutp/20);           //in 
m=Vavg*sqrt(2)/Pin/R;
printf("\n The modulation depth ,m = %0.1f percent",m*100);

