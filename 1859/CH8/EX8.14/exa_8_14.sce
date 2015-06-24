// Exa 8.14
clc;
clear;
close;
// Given data
vertical_attenuation= 0.5;// in V/Div
TPD= 2;// time/Div control in micro sec
P= 4*vertical_attenuation;// peak-to-peak amplitude of the signal in V;
disp(P,"Peak-to-Peak amplitude of the signal in V")
T= 4*TPD;// in micro sec
T=T*10^-6;// in sec
f=1/T;// in Hz
disp(f*10^-3,"Frequency in kHz")

