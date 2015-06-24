// Example 4.21;//Pulse broadning due to intermodal dispersion
clc;
clear;
close;
d=0.01;// Change in refractive index
n1=1.5;//Core refrctive index
L=6;//Length in Km
C=2.998*10^8;//Speed of light in m/s
Pb=86.7;// rms pulse broadning in ns
PbL=Pb/L;//rms pulse broadning in ns/Km
Sg=(1*10^3*n1*d^2)/(20*sqrt(3)*C)*10^12;//Pulse broadning due to intermodal dispersion in Ps
disp(Sg,"Pulse broadning due to intermodal dispersion in Ps")
