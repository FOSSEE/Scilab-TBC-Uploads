// Exa 4.8
clc;
clear;
close;
format('v',7)
// Given data
R = 20;// in ohm
C = 200;// in µF
C=C*10^-6
f =50;// in Hz
//I = 10.8 sin(314*t)
Im = 10.8;// in A
I = Im/sqrt(2);// in A
V_R = I*R;// in V
disp(V_R,"The voltage across 20Ω resistor in V is : ")
//Vc = I*X_C and  X_C = 1/omega*C;
omega = 2*%pi*f;// in rad/sec
Vc = I * 1/(omega*C);// in V
disp(Vc,"The voltage across 200 µF capacitor in V is");
V = sqrt( (V_R^2) + (Vc^2) );// in V
disp(V,"The voltage across the circuit in V is");
