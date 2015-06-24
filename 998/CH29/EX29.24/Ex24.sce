//Ex:24
clc;
clear;
close;
a=0.25;//Roll_off
r_s=16*10^3;//Symbol rate in Hz
B_s=r_s*(1+a);//signal BW in Hz
f_c=14.125*10^6;// in Hz
f_min=f_c-(B_s)/2;//min frequency in Hz
f_max=f_c+(B_s)/2;//max frequency in Hz
//printf("min frequency=%f MHz",B_s);
printf("min frequency=%f MHz", f_min/10^6);
printf("\n max frequency=%f MHz",f_max/10^6);
//Hence frequency range of transmitted signal is from 14.115 MHz to 14.135 MHz