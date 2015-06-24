clear;
clc;

V=132;
V=V/sqrt(3);
T=60;

V=V*sqrt(2);
x=1;
r=V/(T * x);
R= %e * r;
t=R-r;

mprintf("\nMost economical conductor diameter = %.2f cm", fix(2*R*100)/100);
mprintf("\nOverall diameter of insulation = %.3f cm", fix(2*r*1000)/1000);
