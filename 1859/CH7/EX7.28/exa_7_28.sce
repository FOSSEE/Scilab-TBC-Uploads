// Exa 7.28
clc;
clear;
close;
// Given data
f= 450;// in kHz
f=f*10^3;// in Hz
C=250;// in pF
C=C*10^-12;// in F
Rsh= 0.75;// in ohm
Q= 105;
omega= 2*%pi*f;// in radians/sec
// Formula f= 1/(2*%pi*sqrt(L*C))
L= 1/((2*%pi*f)^2*C);// in H
disp(round(L*10^6),"Inductance of the coil in µH")
R= omega*L/Q-Rsh;// in ohm
disp(R,"Resistance of the coil in ohm")
