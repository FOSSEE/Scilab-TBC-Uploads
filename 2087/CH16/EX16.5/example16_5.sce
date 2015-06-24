

//example 16.5
//calculate spacing of drains
clc;funcprot(0);
//given
H=10;             //depth of impervious stratum from top soil
D=1.8;           //position of drain below top soil surface
Hw=1.5;          //depth of highest point of water
k=1D-4;         //permeability constant

//since water has to be removed in 24 hours
b=H-Hw;
a=H-D;
L=(4*k*(b^2-a^2)*100*24*3600/0.8)^0.5;
mprintf("drains should be spaced at %i m c/c.",L);
