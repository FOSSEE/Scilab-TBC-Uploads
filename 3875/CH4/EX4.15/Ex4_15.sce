clc;
clear;
d=0.05*10^-3 //diameter of the wire in m
D=15 //distance between the glass plates and the edge in cm
lambda=6000*10^-10 //wavelength in m


//calculation
alpha=d/D //wedge angle in radian
Beta=lambda/(2*alpha)

mprintf("The fringe width is = %1.2f cm",Beta)
