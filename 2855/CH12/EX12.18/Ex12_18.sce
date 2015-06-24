//Chapter 12
//page no 486
//given
clc;
clear all;
CSO=-59.8;  //in dB
y=10^(CSO/10);
mprintf("AM modulation depth (m) = %e\n",y);
asq=3.6*10^-3;
Ncso=50;
msq=(y/Ncso/asq/asq);
mprintf("\n m^2  = %e\n",msq);
printf("\n Decrease of AM modulation depth decrease the CSO distortion by  = %0.0f percent",sqrt(msq)*100);
