// RLC circuit problems with quality factor

clc;
clear;

C=320*(10^-12);
Q=50;
f0=175*(10^3);
w0=2*%pi*f0;

L=1/(C*(w0^2));

R=w0*L/Q;

Xc=1/(C*w0);
Xl=L*w0;

V=0.85;

I=V/R;

Vc=I*Xc;

bw=f0/Q;

mprintf('The inductance for resonance =%f m H \n',(10^3)*L);
mprintf('The current flowing in the circuit at resonance =%f m A \n',(10^3)*I);
mprintf('The voltage across the capacitor at resonance =%f V \n',Vc);
mprintf('The bandwidth of the circuit =%f Hz \n',bw);
