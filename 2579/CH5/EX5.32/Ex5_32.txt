//Ex:5.32
clc;
clear;
close;
wt=35;// transmeter power in Watt
wt1=10*log(wt)/log(10);// transmeter power in dB
Gt=40;// transmeter gain in dB
Gr=40;// receiver gain in dB
d=150;// distance in km
y=6/100;// wavelength in m
f=300/y;// frequency in MHz
Ls=32.45+20*log(f)/log(10)+20*log(d)/log(10);// loss in dB
wr=wt1+Gt+Gr-Ls;// receive power in dB
WR=10^(wr/10);// receive power in watt
printf("The receive power = %f dB", wr);
printf("\n The receive power = %f uW", WR*10^6);