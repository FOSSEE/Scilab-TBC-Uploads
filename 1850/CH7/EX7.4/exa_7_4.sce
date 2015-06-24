// Exa 7.4
clc;
clear;
close;
//given data
R= 1;// in kohm
R=R*10^3;// in ohm
C= 4.7;// in micro F
C=C*10^-6;// in F
omega=1/(R*C);// in radians/second
f=omega/(2*%pi);// in Hz
disp(f,"Frequency of the oscillation of the circuit in Hz")
