//Example9.4   // to determine the output frequency capacitor charging time of VCO
clc;
clear;
close;
Vcc = 12 ;
Vcs = 6
R = 10 ; // K ohm
C = 1 ; // uF

// the current through the control resistor R
i =(Vcc-Vcs)/R ;
disp('The current through the control resistor R is = '+string(i)+ ' mA ');

// The charging time of capacitor 
t = (0.25*Vcc*C)/i ;
disp('The charging time of capacitor is = '+string(t)+ ' msec ');

// In VCO the capacitor charging and discharging time period are equal ,so the total time period of tringular and square wave forms can be written as 2*t ;
t = ((0.5*Vcc*C)/i);
disp('The total time period of tringular and square wave is = '+string(t)+ ' msec ');

// the output frequency of VCO is
fo = 1/t ;
disp('The output frequency of VCO is = '+string(fo)+ ' KHz ');
