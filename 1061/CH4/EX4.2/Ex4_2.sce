//Ex:4.2
clc;
clear;
close;
Pi=1.5*10^-3;// mean optical power in watt
Po=2*10^-6;// output mean power in watt
a=0.5;// dB/km
L=(10*log(Pi/Po)/log(10))/a;// max possible link Length in km
printf("The max possible link Length =%f km", L);