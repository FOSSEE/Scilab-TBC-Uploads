//Chapter 13_Voltage Regulators
//Caption : Inductor and Capacitor
//Example13.14: A switching voltage regulator operates at a switching frequency of 30kHz and is to supply a load current Io of 1 A at a dc output voltage Vo of +10V.The dc input voltage is Vin=20V and the output(peak-peak) ripple factor is not to exceed 0.05%. Assume Rl=10 Ohm.
//a)Find the value of the filter inductor L such that the maximum change or ripple in the current through the inductor will not exceed 40% of the average or dc current.
//b)Find the value of the outpur capacitor CL for L1=100 uH and for L2=500 uH.
clear;
clc;
//a)Solution:
Rl=10;
D=0.5;
T=2.5;
fs=30*10^3;
L=Rl*T*(1-D)/fs;
disp('uH',L/10^-6,'filter inductor L to ensure maximum ripple in the current through the inductor will not exceed 40% of the dc current is:')
//b)Solution:
L1=100*10^-6;
RF=0.05*10^2;//output (peak-peak)ripple factor maximum limit
//for ripple factor condition we have
CL1=1/(15*fs^2*L1*RF);
disp('********For L=100 uH********')
disp('uF',CL1*10^10,'output capacitor is:')
disp('********For L=500 uH********')
L2=500*10^-6;
CL2=1/(15*fs^2*L2*RF);
disp('uF',CL2*10^10,'output capacitor is:')