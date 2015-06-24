//Chapter 12
//page no 494
//given
clc;
clear all;
Voutp=20;           //in dB
Pin=1.2;            //in mW
m=0.035;
Vavg=10^(Voutp/20);           //in 
R=Vavg*sqrt(2)/Pin/m;
printf("\n R = %0.1f V/W",R);

