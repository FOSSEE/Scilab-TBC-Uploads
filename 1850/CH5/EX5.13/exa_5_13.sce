// Exa 5.13
clc;
clear;
close;
// Given data
R=50;// in k ohm
R=R*10^3;// in ohm
C=2;// in micro F
C=C*10^-6;// in F
f=2;// in kHz
f=f*10^3;// in Hz
Vmax= 10;// in micro volt
CR= C*R;
v_in= 'Vmax*sind(2*%pi*f*t)'
v_in= '10*sind(4000*%pi*t)';// in micro volt
// v_out= -CR*diff(v_in) = -0.1*10*diff(sind(4000*%pi*t))// in micro volt
disp("Output Voltage")
disp("12.56 cos(4000*pi*t)")
