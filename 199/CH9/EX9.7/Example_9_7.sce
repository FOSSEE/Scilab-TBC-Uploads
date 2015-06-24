// Chapter9
// Page.No-402, Figure.No-9.21(a)
// Example_9_7
// Value of tc,td and f0
// Given
clear;clc;
Ra=2.2*10^3; // Resistance in ohm
Rb=3.9*10^3;  // Resistance in ohm
C=0.1*10^-6; // capacitance in farad
tc=0.69*(Ra+Rb)*C; // Charging time of the capacitor
printf("\n Charging time of the capacitor is = %.6f sec \n",tc) // Result
td=0.69*Rb*C; // Discharging time of the capacitor
printf("\n Discharging time of the capacitor is = %.6f sec \n",td) // Result
T=tc+td;
fo=1/T // Freq of oscillation
printf("\n Freq of oscillation is = %.1f Hz \n",fo) // Result