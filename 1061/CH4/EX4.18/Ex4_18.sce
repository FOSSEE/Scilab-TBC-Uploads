//Ex:4.18
clc;
clear;
close;
Pi=1*10^-3;// input power in watt
Po=0.75*10^-3;// output power in watt
a=0.5;// in dB/km
L=(10*log(Pi/Po)/log(10))/a;// transmission length in km
printf("The transmission length =%f km", L);