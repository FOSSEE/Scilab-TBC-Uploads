// Chapter9
// Page.No-402, Figure.No-9.16(a)
// Example_9_6
// Value of resistor
// Given
clear;clc;
f=2*10^3; // Freq of input trigger signal in Hz
C=0.01*10^-6;
tp=1.2/f;
Ra=tp/(1.1*C);
printf("\n Resistance Ra is = %.1f ohm \n",Ra) // Result