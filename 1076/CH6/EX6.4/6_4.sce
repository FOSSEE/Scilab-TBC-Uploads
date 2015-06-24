clear;
clc;

dia=30e-3;
r=dia/2;
del=.95;
m0=.95;
Vd=230e3;
Vd=Vd/sqrt(3);

x=round(Vd*100/((3e6/sqrt(2))* r * del * m0))/100; 
d= exp(x) * r;
mprintf("\n minimum spacing between conductors = %.2f m", d);
