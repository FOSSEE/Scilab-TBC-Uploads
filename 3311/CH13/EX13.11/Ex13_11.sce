// chapter 13
// example 13.11
// Compute the values of RF filter components
// page-833
clear;
clc;
// given
R_L=120; // in ohm
f0=50; // in KHz
// calculate
f0=f0*1E3; // changing unit from KHz to Hz
L=R_L/(2*%pi*f0); // calculation of inductance
C=1/(2*%pi*R_L*f0); // calculation of capacitance
printf("\nThe inductance is \t L=%.2f uH",L*1E6);
printf("\nThe capacitance is \t C=%.3f uF",C*1E6);
// Note :The answer vary slightly due to precise calculation