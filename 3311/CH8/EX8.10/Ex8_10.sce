// chapter 8
// example 8.10
// Find the on period, average load current, magnitude of ripple current and its rms value
// page-464
clear;
clc;
// given
f=2; // in Khz (chopping frequency)
Edc=96; // in V (dc source)
R=8; // in ohm
tou=6; // in ms (time constant)
E0=57.6; // in V (average load voltage)
// calculate
f=f*1E3; // changing unit from Khz to Hz
tou=tou*1E-3; // changing unit from ms to s
T=1/f; // calculation of chopping period
// Since tou=L/R, therefore we get
L=tou*R; // calculation of Inductance
// Since Eo=Edc*(Ton/T), therefore we get
Ton=(E0/Edc)*T; // calculation of ON period of chopper
Toff=T-Ton; // calculation of OFF period of chopper
F_L_rms=Edc*sqrt(Ton/T); // calculation of rms value of load voltage
I0=E0/R; // calculation of average load current
del_i=(Edc-E0)*Ton/L; // calculation of current ripple
I0_max=(Edc/R)*((1-exp(-Ton/tou))/(1-exp(-T/tou))); // calculation of maximum output current
I0_min=I0_max*exp(-Toff/tou); // calculation of minimum output current
Ir_rms=(I0_max-I0_min)/(2*sqrt(3)); // calculation of rms value of ripple current
printf("\nThe ON period of chopper is \t\t Ton=%.1f ms",Ton*1E3);
printf("\nThe rms value of load voltage is \t %.2f V",F_L_rms);
printf("\nThe average load current is \t\t I0=%.1f A",I0);
printf("\nThe magnitude of ripple current is \t %.2f A",del_i);
printf("\nThe maximum load current is \t\t I0_max=%.2f A",I0_max);
printf("\nThe minimum load current is \t\t I0_min=%.2f A",I0_min);
printf("\nThe RMS value of ripple current is \t Ir_rms=%.4f A",Ir_rms);
// Note: The answer varies slightly due to precise calculation