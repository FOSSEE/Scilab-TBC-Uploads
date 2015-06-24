//Ex:8.1
clc;
clear;
close;
tr=40;// rediative life time in ns
tnr=60;// nonrediative life time in ns
i=35*10^-3;// drive current in amp
y=0.85*10^-6;// wavelength in m
h=6.626*10^-34;// plank constant
c=3*10^8;// the speed of light in m/s
e=1.602*10^-19;// charge
t=tr*tnr/(tr+tnr);// total carrier recombination lifetime ns
ni=t/tr;// internal quantam efficiency
pi=(ni*h*c*i)/(e*y);// internal power in watt
p_int=pi*10^3;// internal power in mW
printf("The total carrier recombination lifetime =%d ns", t);
printf("\n The internal power =%f mW", p_int);
printf("\n the answer is wrong in textbook");