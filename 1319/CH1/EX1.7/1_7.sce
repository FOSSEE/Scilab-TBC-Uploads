// To determine circuit impedance and current in a parallel connection of a resistor and capacitor.

clc;
clear;

R=4700;
V=240;
f=60;
w=2*%pi*f;
C=2*(10^-6);
Xc=-(1/(C*w))*%i;// Reactance in polar form

Ir=V/R;
Ic=V/Xc;

I=Ir+Ic;// Total current

Z=V/I;

theta=atand(imag(Z)/real(Z));

mprintf('Impedance of the circuit =  %f /_ %f ohms',abs(Z),theta)

