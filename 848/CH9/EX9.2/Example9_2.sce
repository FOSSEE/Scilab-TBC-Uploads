//clear//
//Caption: Program to Find limiting conditions for pin-photodiode
//Example9.3
//page 323
clear;
clc;
close;
T =300;//room temperature in kelvin
kB = 1.38054e-23; //Boltzmann's constant in Joules/k
m =0.25; //modualtion index
RIN_dB = -143; //Relative intensity in dB/Hz
RIN = 10^(RIN_dB/10);
Pc = (10^(0/10))*1e-3; //power coupled to optical fiber in dBm
R = 0.6; //Responsivity A/w
Be = 10e06; //bandwidth 10MHz
ID = 10e-09; //dark current 10nA
Req = 750; //equivalent resistance 750 ohm
Ft = 10^(3/10); //in 3 dB
M = 1; //Multiplication factor for pin photodiode
R = 0.6; //responsivity in A/m
q = 1.602e-19; //charge in coulombs
p = 0:-1:-20;
P = (10^(p/10))*1e-3;
C_N_1 = 0.5*((m*R*P)^2)/(4*kB*T*Be*Ft/Req);
C_N_3 = 0.5*m^2/(RIN*Be);
C_N_2 = 0.5*m^2*R*P/(2*q*Be);
figure
plot(p,10*log10(C_N_1),'r')
xlabel('Received Optical Power(dBm)')
ylabel('Carrier-to-noise ratio(dB)')
title('Carrier-to-noise ratio 1 (Preamplifier receiver noise)')
figure
plot(p,10*log10(C_N_2),'m')
xlabel('Received Optical Power(dBm)')
ylabel('Carrier-to-noise ratio(dB)')
title('Carrier-to-noise ratio 2 (Quantum noise)')
figure
plot(p,10*log10(C_N_3)*ones(1,length(p)))
xlabel('Received Optical Power(dBm)')
ylabel('Carrier-to-noise ratio(dB)')
title('Carrier-to-noise ratio 3 (Reflection noise)')
