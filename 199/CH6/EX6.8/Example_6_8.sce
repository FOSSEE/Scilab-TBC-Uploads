// Chapter6
// Page.No-209, Figure.No-6.12
// Example_6_7
// Change in resistance in straingage
// Given
clear;clc;
A=-100; // Gain of the differential instrumentation amplifier
Ra=100;Rb=100;Rc=100;
Vdc=10;Vo=1;
R=Ra; // Ra=Rb=Rc=R
delta_R=(Vo*R)/(Vdc*abs(A)); // Change in resistance
printf("\n Change in resistance is = %.1f ohm \n",delta_R)