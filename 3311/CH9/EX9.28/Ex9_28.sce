// chapter 9
// example 9.28
// Design an OTT-filter
// page-662
clear;
clc;
// given
E_L=230; // in V (output voltage)
f=50; // in Hz
I_L=1.5; // in A (load current)
Edc=40; // in V (source voltage)
// calculate
W_D=2*%pi*f; // calculation of design radian frequency
Z_L=E_L/I_L; // calculation of load impedence
Z_D=abs(Z_L)/2; // calculation of filter design impedence
C1=1/(6*Z_D*W_D); // calculation of capacitance C1
C2=1/(3*Z_D*W_D); // calculation of capacitance C2
L1=9*Z_D/(2*W_D); // calculation of inductance L1
L2=Z_D/W_D; // calculation of inductance L1
printf("\nThe design radian frequency is \t W_D=%.f rad/s",W_D);
printf("\nThe load impedence is \t\t Z_L=%.2f ohm",Z_L);
printf("\nThe filter design impedence is \t Z_D=%.2f ohm",Z_D);
printf("\nThe capacitance C1 is \t\t C1=%.2f uF",C1*1E6);
printf("\nThe capacitance C2 is \t\t C2=%.2f uF",C2*1E6);
printf("\nThe capacitance L1 is \t\t L1=%.3f H",L1);
printf("\nThe capacitance L2 is \t\t L1=%.3f H",L2);
// Note: The answer varies slightly due to precise calculation