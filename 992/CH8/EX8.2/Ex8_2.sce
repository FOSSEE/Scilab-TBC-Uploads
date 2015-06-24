
//Exa:8.2
clc;
clear;
close;
//Given:
Bw=3300;//in Hz
resol=10;//bits per sample
Nr=2*Bw;//samples per second
Brate=Nr*resol;
DigBw=5*Brate;
printf("\n Nyquist sampling rate = %f Hz",Nr);
printf("\n Bit rate is = %f bits/sec",Brate);
printf("\n Digital bandwidth = %f KHz",DigBw/1000);