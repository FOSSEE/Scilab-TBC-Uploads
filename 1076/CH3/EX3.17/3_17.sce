clear;
clc;

Y1=500^-1;
Y2=1000^-1;
Z=100;

A= 1+Y2 * Z;
B=Z;
C=Y1+Y2+(Y1*Y2*Z);
D=1+Y1 * Z

mprintf("A= %.1f ; B= %.1f ohm ; C=%.1f *1e-3seimens; D= %.1f", A, B, C*1e3, D);
