//Ex:5.29
clc;
clear;
close;
wt=10*10^6;// power in Watt
Gt=65;// antenna gain in dB
Gt1=10^(Gt/10);// antenna gain
d=4000000*100;// distance in m
Pd=(wt*Gt1)/(4*%pi*d^2);// power density in uW
printf("The power density = %f uW", Pd*10^6);