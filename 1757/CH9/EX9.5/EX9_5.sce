//Example9.5  // to design VCO with output square wave pulse time of 50 msec
clc;
clear;
close;
Vcc =6 ;
Vcs = 5 ;
R = 22 ; //K ohm
C = 0.02 ; // uF
t = 50*10^-3 ; // sec   output square wave pluse

// In VCO the capacitor charging and discharging time period are equal ,so the total time period of tringular and square wave forms can be written as 2*t ;


// the charging or discharging time of capacitor 
tcap = t/2 ;
disp('The charging or discharging time of capacitor is = '+string(tcap)+ ' msec ');

// the output frequency of VCO is
fo = 1/t ;
disp('The output frequency of VCO is is = '+string(fo)+ ' Hz ');

// the output frequency of VCO
 // fo = (1/4*R*C);
 R = 1/(4*fo*C) ;
disp('The output frequency of VCO is = '+string(R)+ ' ohm');

// the current through the control resistor R
i =(Vcc-Vcs)/R ;
disp('The current through the control resistor R is = '+string(i)+ ' uA ');

// the capacitor charging current 
// (V/t)=(i/C) ;
V = (i/C)*tcap ;
disp('The capacitor charging current is = '+string(V)+ ' V = 0.33Vcc ');
