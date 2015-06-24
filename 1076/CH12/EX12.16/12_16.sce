clear;
clc

i=100
L=4e-3
C=300e-12
E=i* sqrt(L/C)
T=1/ sqrt(L*C)
mprintf("e= %.0f *1e3 sin( %.3f *1e6 t) kV",E/1e3,T/1e6)
