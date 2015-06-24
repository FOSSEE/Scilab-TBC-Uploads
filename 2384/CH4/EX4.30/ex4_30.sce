// Exa 4.30
clc;
clear;
close;
format('v',6)
// Given data
R = 4;// in ohm
L = 0.5;// in H
V = 100;// in V
f = 50;// in Hz
X_L = 2*%pi*f*L;// in ohm
X_C = X_L;// in ohm
// X_C = 1/(2*%pi*f*C);
C = 1/(X_C*2*%pi*f);// in F
C = C * 10^6;// in F
disp(C,"The value of capacitance in µF is");
I = V/R;// in A]
V_C = I*X_C;// in V
disp(V_C,"The voltage across the capacitance in V");
omega = 2*%pi*f;// in rad/sec
Q = (omega*L)/R;
disp(Q,"The Q factor of the circuit is");
