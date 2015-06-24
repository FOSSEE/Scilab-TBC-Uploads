// Exa 4.15
clc;
clear;
close;
// Given data
R = 500;// in k  ohm
R = R * 10^3;// in ohm
C = 10;// in µF
C = C * 10^-6;// in F
V= -0.5;// in V
Vout= 12;// in V
// Vout= -1/RC*integrate('V*t','t',0,t)= -1/(R*C)*V*t
t= Vout/(-1/(R*C)*V);// in sec
disp(t,"Time duration required for saturation of output voltage in second is : ")

