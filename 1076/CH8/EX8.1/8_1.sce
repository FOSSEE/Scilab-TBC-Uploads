clear;
clc;

n=37;
r=.238
t=.5;

r1=r*3.5;
GMR=.7788*r1;
D= 2*(r1+t);
L=.4605 * log10(D/GMR);
mprintf("\n L= %.4f mH/km/conductor", fix(L*1e4)*1e-4);
