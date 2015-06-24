// Exa 7.6
clc;
clear;
close;
//given data
R= 10;// in kohm
R=R*10^3;// in ohm
C= 100;// in pF
C=C*10^-12;// in F
f=1/(2*%pi*R*C);// in Hz
disp(f*10^-3,"Frequency of the oscillation of the circuit in kHz")
