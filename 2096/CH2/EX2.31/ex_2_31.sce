
//Example 2.31 //inductance and resistance
clc;
clear;
close;
//given data :
C=220; // in pico-farad
f1=400;// in kilo-Hz
Rsh=0.8; // in ohm
Q=110;
w=2*%pi*f1*1000;
L=(1/(w^2*C*10^-12));
R=((w*L)/Q);
disp(L*10^6,"inductance,L(micro-H) = ")
disp(R,"resistance,R(ohm) = ")
