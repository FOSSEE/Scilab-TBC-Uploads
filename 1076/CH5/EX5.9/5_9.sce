clear;
clc;

l=244;
m=.847;
g=9.81;
w=m*g;
T=3.56e4;

L=l*(1+ ((w*w * l*l)/(24* T *T)));
mprintf("length of conductor between 2 towers = %.3f m", L);
