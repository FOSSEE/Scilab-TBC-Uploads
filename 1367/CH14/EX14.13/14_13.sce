//Find Magnetic field strength and Flux density
//Ex:14.13
clc;
clear;
close;
l=.25;//in m
n=400;//turns
i=15;//in A
u_0=1.257*10^-6;//in H/m
h=n*i/l;//in AT/m
disp(h,"Magnetic field strength (in AT/m) = ");
u_r=1;//relative permeability
b=u_0*u_r*h;//in wB/sqm
disp(b,"Flux density (in Wb/sq m) = ");
