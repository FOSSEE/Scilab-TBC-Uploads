//Ex:8.25
clc;
clear;
close;
tr=25;// rediative life time in ns
tnr=90;// nonrediative life time in ns
i=3.5*10^-3;// drive current in amp
y=1.31*10^-6;// wavelength in m
h=6.625*10^-34;// plank constant
c=3*10^8;// the speed of light in m/s
e=1.6*10^-19;// charge
t=tr*tnr/(tr+tnr);// total carrier recombination lifetime ns
ni=t/tr;// internal quantam efficiency
pi=(ni*h*c*i)/(e*y);// internal power in watt
p_int=pi*10^3;// internal power in mW
P=p_int/(ni*(ni+1));// power emitted in mW
printf("The total carrier recombination lifetime =%f ns", t);
printf("\n The internal quantam efficiency =%f ", ni);
printf("\n The internal power =%f mW", p_int);
printf("\n The power emitted =%f mW", P);