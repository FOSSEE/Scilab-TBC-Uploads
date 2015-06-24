// Exa 9.1
clc;
clear;
close;
format('v',5)
// Given data
R = 10;// in ohm
L = 20;// in mH
L = L * 10^-3;// in H
C = 0.05;// in µF
C = C * 10^-6;// in F
f_r = (1/(2*%pi))*sqrt( (1/(L*C)) - ((R^2)/(L^2)) );// in Hz
f_r = round(f_r * 10^-3);// in kHz
disp(f_r,"The resonant frequency in kHz is");
Q = (2*%pi*f_r*10^3*L)/R;//Q factor of the tank circuit
disp(Q,"The Q factor of the tank circuit is");
BW = (f_r*10^3)/Q;// in Hz
disp(BW,"The band width of the amplifier in Hz is");
