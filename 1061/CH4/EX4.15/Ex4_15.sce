//Ex:4.15
clc;
clear;
close;
L=500/1000;// distance in km
Pio=(1/(1-0.75));
Ls=10*log(Pio)/log(10)/L;// Loss in dB/km
printf("The Loss =%f dB/km", Ls);