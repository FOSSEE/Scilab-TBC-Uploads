//Ex:8.2
clc;
clear;
close;
tr=30;// rediative life time in ns
tnr=50;// nonrediative life time in ns
i=40*10^-3;// drive current in amp
pi=28.4*10^-3;// internal power in watt
h=6.626*10^-34;// plank constant
c=3*10^8;// the speed of light in m/s
e=1.602*10^-19;// charge
t=tr*tnr/(tr+tnr);// total carrier recombination lifetime ns
ni=t/tr;// internal quantam efficiency
y=(ni*h*c*i)/(e*pi);// peak emission wavelength in m
printf("The total carrier recombination lifetime =%f ns", t);
printf("\n The peak emission wavelength =%f um", y*10^6);