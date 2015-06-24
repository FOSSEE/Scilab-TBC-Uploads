
//Example 12.8 // speed
clc;
clear;
close;
//given data :
g=9.81; // gravity og earth
Sh=13.6; // gravity of mercury
Sl=1.025; // gravity of sea water
y=0.2; // reading of the manometer in m
h=y*((Sh/Sl)-1);
V=sqrt(2*g*h);
disp("velocity of sub-marine,V(m/s) "+string(V)+" or "+string(V*(3.6))+" km/h")
