//Chapter 12
//page no 493
//given
clc;
clear all;
R=800;              //in V/W
Pin=1.5;            //in mW
m=0.04;
Voutp=R*Pin*m;
printf("\n Vout(peak) = %0.0f mV",Voutp);
Vavg=Voutp/sqrt(2);
printf("\n Vavg = %0.1f mV",Vavg);
//in dB
Vavgd=20*log10(Vavg*10^-3);
printf("\n Vavg(in dBmV) = %0.1f ",Vavgd);

