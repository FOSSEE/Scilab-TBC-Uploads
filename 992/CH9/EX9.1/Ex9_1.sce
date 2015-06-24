
//Exa:9.1
clc;
clear;
close;
//Given:
Fm=80;//in MHz
Fc=60;//in MHz
Fb=20;//in Mbps
MI=(Fm-Fc)/Fb;
printf("\n Modulation index is = %f",MI);
printf("\n Minimum required bandwidth = %fMHz",Fc);
printf("\n Baud rate = %fMegabaud",Fb);