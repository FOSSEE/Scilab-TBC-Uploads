//Caption:Calculate breadth of rectangular waveguide
//Exa:4.7
clc;
clear;
close;
f=9*10^9;//in Hz
c=3*10^10;//in cm/s
wl_g=4;//in m
wl_o=c/f;
wl_c=[sqrt(1-((wl_o/wl_g)^2))/wl_o]^-1;
b=wl_c/4;
disp(b,'Breadth of rectangular waveguide (in cm) =');