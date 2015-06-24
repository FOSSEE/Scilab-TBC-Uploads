clc;
// page no 760
// prob no 20.5
// In the given problem
G=40;// receiving antenna gain
T_sky=15;// noise temp
L=0.4;//loss between antenna and LNA input
T_eq =40;// noise temperature f LNA
// Fir-st we have to find G in dB
G_dB = G-L;
// For the calculation of T, we have to convert the feedhorn loss into a ratio as follows
L=10^(0.4/10);
Ta = ((L-1)*290 + T_sky )/ L;
// The receiver noise temperature is given wrt the chosen reference point,theefore
Ratio= G -10*log10(Ta+T_eq);
disp('dB',Ratio,'The receiver noise temperature is');