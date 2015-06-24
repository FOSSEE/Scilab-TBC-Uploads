clc;
v=5;  //in volt
sp=2*10^-3;  //spacing in m
d=1;  //distance in metre
hw=7.5;  //half wavelength in metre
f=10.6*10^6;  //frequency in Hz
a=0.8;  //area in centimetre square
r=316;  //standard model radiation in (V*10^-6)/metre
n=316*(125*a*v*d)/(89*3.3);  //calculating radiation
disp(n,"Radiation in (V*10^-6)/metre = ");  //displaying result