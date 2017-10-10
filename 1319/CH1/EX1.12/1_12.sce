// RLC circuit problem to find the resonance frequncy and impedance magnitude

clc;
clear;

R=10;
L=100*(10^-3);
C=0.01*(10^-6);

f0=1/((2*%pi)*(sqrt(L*C)));
// New frequencies according to the problem statement
f1=f0-1000;
f2=f0+1000;

w1=2*%pi*f1;
w2=2*%pi*f2;

Xl1=w1*L;
Xc1=1/(w1*C);

Xl2=w2*L;
Xc2=1/(C*w2);

Z1=sqrt((R^2)+((Xl1-Xc1)^2));
Z2=sqrt((R^2)+((Xl2-Xc2)^2));

mprintf('The Impedance magnitude at 1KHz below resonance (Capacitive) =%f ohms \n',Z1)
mprintf('The Impedance magnitude at 1KHz above resonance (Inductive) =%f ohms \n',Z2)
