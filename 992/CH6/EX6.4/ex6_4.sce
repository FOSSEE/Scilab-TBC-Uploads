
//Exa:6.4
clc;
clear;
close;
//Given:
Fmax=3;//in kHz
Bw=20;//in MHz
Bs=2*Fmax*1000;
n=(20*1000000)/Bs;
printf("\n\t number of stations = %f",n);