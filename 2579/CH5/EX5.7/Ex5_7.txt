//Ex:5.7
clc;
clear;
close;
f=3000;// frequency in MHz
d=384000;// distance in km
Lp=32.45+20*log(f)/log(10)+20*log(d)/log(10);// path loss in dB
printf("The path loss = %f dB", Lp);