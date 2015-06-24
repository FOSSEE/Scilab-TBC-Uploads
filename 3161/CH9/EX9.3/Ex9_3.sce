clc;
//page 475
//problem 9.3

//Resistance R = 1000 Ohm
R = 10^3;

//Capacitance C = 0.1 * 10^-6 F
C = 0.1*10^-6;

//Break point for RC filter is f1
f1 = 1/(2*%pi*R*C)

//Baseband bandwidth of signal fM = 15 kHz
fM = 15 * 10^3;

Gain = atan(fM/f1)/(3*(f1/fM)*[1 - (f1/fM)*atan(fM/f1)]);

disp('Initial Gain is '+string(10*log10(Gain))+' dB');

//New Baseband bandwidth of signal fM_new = 15 kHz
fM_new = 2*15 * 10^3;

Gain_new = atan(fM_new/f1)/(3*(f1/fM_new)*[1 - (f1/fM_new)*atan(fM_new/f1)]);

disp('Final Gain is '+string(10*log10(Gain_new))+' dB');

