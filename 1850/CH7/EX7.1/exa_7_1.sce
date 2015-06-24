// Exa 7.1
clc;
clear;
close;
//given data
f=200;// in Hz
// Let us take
C=0.1;// in micro F
C=C*10^-6;// in F
R=1/(2*%pi*f*C*sqrt(6));// in ohm
R=R*10^-3;// in k ohm
// R1>=10*R, Let
R1=10*R;// in kohm
R_f= 29*R1;// in k ohm
R_f=R_f*10^-3; // in M ohm
R_f=ceil(R_f);
disp(R_f,"Resistor of phase-shift oscillator in Mohm")



