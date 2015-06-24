
//Exa:8.3
clc;
clear;
close;
//Given:
Bw=25;//in KHz
Nr=2*Bw*1000;
printf("\n Nyquist sampling rate = %f samples/seconds",Nr/1000);
br=8;//bits
Ne=br*Nr;
printf("\n Transmitted elements = %f elements",Ne);