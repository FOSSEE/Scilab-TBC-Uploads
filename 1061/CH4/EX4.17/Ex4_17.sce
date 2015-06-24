//Ex:4.17
clc;
clear;
close;
L=1;// distance in km
Pio=(1/(1-0.40));
Ls=10*log(Pio)/log(10)/L;// Loss in dB/km
printf("The Loss =%f dB/km", Ls);