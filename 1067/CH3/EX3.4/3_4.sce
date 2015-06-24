
clear;
close;
clc;
R=5 
f=50
L=R/(2*%pi*f);
V=11e3;
Vph=11/sqrt(3);
C=0.01d-6;
y=sqrt(L*C);
Em=sqrt(2)*Vph;
ep=2*Em;
ep=round(ep*10)/10;
y=round(y*1e7)/1e7;
t=y*%pi;
t=fix(t*1e7)/1e7
ea=ep/t;
ea=round(ea/1e3)*1e3
fn=(2*3.14*y)^-1;
Em=round(Em)
Emax=Em/y;
Emax=round(Emax/1000)*1e3;
mprintf("peak restriking voltage=%dkV",ep);
printf("\nfrequency of oscillations=%dc/s",fn);
printf("\naverage rate of restriking voltage=%fkV/microsecs",ea/1e6);
printf("\nmax restriking voltage=%dV/microsecs",Emax/1e3);

