// Exa 5.9
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
Vrms= 10;// in mV
RC= R*C;
// v_out= -1/(RC)*integrate('sqrt(2)*10*sind(4000*%pi*t)','t',0,t)= 0.0113*(cosd(4000*t)-1) in mV
disp("Output voltage in mV is : 0.0113*(cosd(4000*t)-1)")


