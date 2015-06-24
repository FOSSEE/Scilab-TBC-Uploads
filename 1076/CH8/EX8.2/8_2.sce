clear;
clc;

V=33;
V=V/sqrt(3);
T=35;

x=1;
r=V/(T * x);
R= %e * r;
t=R-r;

mprintf("\nMost economical conductor radius = %.3f cm", fix(R*1000)/1000);
mprintf("\nInsulation Thickness = %.3f cm", t);
