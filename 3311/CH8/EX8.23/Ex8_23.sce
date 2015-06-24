// chapter 8
// example 8.23
// fig 8.43
// Find duty cycle, filter inductance and filter capacitance
// page-514-515
clear;
clc;
// given
Edc=14; // in V (dc source)
E0=6; // in V (average output voltage)
del_Vc=15; // mV (peak to peak ripple voltage)
del_I=0.6; // in A (peak to peak ripple current)
f=30; // in KHz (switching frequency)
// calculate
del_Vc=del_Vc*1E-3; // changing unit from mV to V
f=f*1E3; // changing unit from KHz to Hz
alpha=E0/Edc; // calculation of duty cycle
L=E0*(Edc-E0)/(f*Edc*del_I); // calculation of filter inductance
C=del_I/(8*f*del_Vc); // calculation of filter capacitance

printf("\nThe duty cycle is \t\t alpha=%.4f \t or %.2f percent",alpha,alpha*100);
printf("\nThe filter inductance is \t L=%.2f uH",L*1E6);
printf("\nThe filter capacitance is \t C=%.2f uF",C*1E6);
// Note: the answers vary slightly due to precise calculation