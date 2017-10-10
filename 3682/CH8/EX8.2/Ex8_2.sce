// Exa 8.2

clc;
clear;

// Given data

// Astable multivibrator
Ra=6.8*10^3; // Ω
Rb=3.3*10^3;  // Ω
C=0.1*10^-6; // μF

// Solution

disp("By using Eq. (8.11) on page no. 320 we get, tHigh as");

tHigh=0.69*(Ra+Rb)*C; // Time required to charge from 1/3 Vcc to 2/3 Vcc
printf(' tHIGH = %.1f mSec. \n',tHigh*1000); 
disp("By using Eq. (8.12) on page no. 320 we get, tLow as");

tLow=0.69*(Rb)*C;  // TIme required to discharge from 2/3 Vcc to 1/3 Vcc
printf(' tLOw = %.2f mSec. \n',tLow*1000);

disp("By using Eq. (8.13) on page no. 320 we get, free running frequency as");
f= 1.45/((Ra+2*Rb)*C);
printf(' f = %.2f kHz. \n\n',f/1000);

D= Rb/(Ra+2*Rb);
printf(' The duty cycle D = %.2f (%d percent).\n ' ,D,round(D*100));
