// Exa 7.29
clc;
clear;
close;
// Given data
f= 500;// in kHz
f=f*10^3;// in Hz
C=120;// in pF
C=C*10^-12;// in F
R= 5;// in ohm
r=0.02;// resistance used across the oscillatory circuit in ohm
omega= 2*%pi*f;// in radians/sec
Q_True= 1/(omega*C*R);
Q_indicated= 1/(omega*C*(R+r));
PerError= (Q_True-Q_indicated)*100/Q_True;// in %
disp(PerError,"Percentage Error is ")
