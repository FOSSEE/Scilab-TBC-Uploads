//Find Concentration Gradient and diffusivity
//Ex:21.1
clc;
clear;
close;
c_cu=2*10^13;//concentration of copper in /m^3
c_al=4*10^6;//concn of copper on other side of Al in /m^3
t=3*10^-3;//thickness in m
z=(c_cu-c_al)/t;//z=dm/dx,concentration graient
disp(z,"Concentration Gradient (in /m^4) = ");
jx=10^21;//outward flux of copperv atoms in /sq m/sec
d=-jx/z;//diffusivity in sq m/sec
disp(d,"Diffusivity (in sq m/sec) = ");