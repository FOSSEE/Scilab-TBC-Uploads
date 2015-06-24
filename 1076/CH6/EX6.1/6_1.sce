clear;
clc;

dia=22.26e-3;
r=dia/2;
V=220e3;
d=6;
mvg=.82;
mvl=.72;
temp=25;
P=73;
m0=.84;


del=3.86*P/(273+temp);
Vd=(3e6/sqrt(2))*r*del*m0* log(d/r) *1e-3;
mprintf("\nDisruptive critical voltage = %.0f KV/phase", Vd)

Vvl=(3e6/sqrt(2))*r*del*mvl* log(d/r)* (1+(.03/sqrt(del*r))) *1e-3;
mprintf("\nVisual local voltage = %.1f KV/phase", Vvl)

Vvg=(3e6/sqrt(2))*r*del*mvg* log(d/r)* (1+(.03/sqrt(del*r))) *1e-3;
mprintf("\nVisual general voltage = %.1f KV/phase", Vvg)
