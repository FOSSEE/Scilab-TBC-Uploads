// Calculating sensitivity and output voltage
clc;
Ci=10*10^-12;
Vi=10;
Eo=8.85*10^-12;
A=200*10^-6;
K=-Ci*Vi/(Eo*A);
disp(K,'sensitivity (V/mm)=')
d=1*10^-6;
Vo=K*d;
disp(Vo,'output voltage (V)=')