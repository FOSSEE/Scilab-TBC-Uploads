// Calculate the output voltage and charge sensitivity
clc;
g=0.055;
t=2*10^-3;
P=1.5*10^6;
Eo=g*t*P;
disp(Eo,'output voltage(V)=')
e=40.6*10^-12;
d=e*g;
disp(d,'charge sensitivity (C/N)=')