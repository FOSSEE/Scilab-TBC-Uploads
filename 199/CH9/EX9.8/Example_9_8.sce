// Chapter9
// Page.No-412, Figure.No-9.24(a)
// Example_9_8
// Freq of free running ramp generator
// Given
clear;clc;
R=10*10^3; // Resistance in ohm
Vcc=5 // Supply voltage in volt
Vbe=0.7 // Base to emitter voltage in volt
C=0.05*10^-6; // Capacitance in farad
Ic=(Vcc-Vbe)/R; // Collector current in ampere
fo=(3*Ic)/(Vcc*C);
printf("\n Freq of free running ramp generator is = %.1f Hz \n",fo) // Result