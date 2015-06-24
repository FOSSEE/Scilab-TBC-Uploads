// Continuous Time Fourier Transforms of 
// Sinusoidal waveforms cos(Wot)
clear;
clc;
close;
// CTFT
T1 = 2;
T = 4*T1;
Wo = 2*%pi/T;
W = [-Wo,0,Wo];
ak = (2*%pi*Wo*T1/%pi);
XW =[ak,0,ak];
plot(W,abs(XW),'.');
xlabel('                        W');
xtitle('CTFT of cos(Wot)','W','X(jW)')

