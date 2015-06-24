//Chapter 12
//page no 431
//given
clc;
clear all;
Pt=25;            //in microW
Prd=15;            //in dBm
Ptd=10*log10(Pt*10^-6/10^-3)                    //in dBm
printf("\n Transmitter Power = %0.0f dBm",Ptd);
Pm=Ptd-Prd;
printf("\n Power margin= %0.0f dBm",Pm);
