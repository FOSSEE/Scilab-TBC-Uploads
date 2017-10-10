clear;
clc;
S=250;
V=3330;
r=.25;
x=3.5;
pf=0.8;
i=(S*1000)/(sqrt(3)*V);
Il=i;
Vp=(V/sqrt(3));
z=complex(r,x);
Ia=complex(34.99,-26.24);
E=Vp+(Ia*z);

Vv=sqrt((real(E)^2)+(imag(E)^2));
reg=((Vv-Vp)/Vp)*100;

mprintf("regulation=%f percent",reg);
