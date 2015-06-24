// Continuous Time Fourier Transforms of 
// Sinusoidal waveforms sin(Wot) 
clear
clc;
close;
T1 = 2;
T = 4*T1;
Wo = 2*%pi/T;
W = [-Wo,0,Wo];
ak = (2*%pi*Wo*T1/%pi)/sqrt(-1);
XW = [-ak,0,ak];
plot(W,-imag(XW),'.');
xlabel('                                                      W');
xtitle('CTFT of sin(Wot)','W','X(jW)')
