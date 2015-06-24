// chapter 8
// example 8.6
// Calculate limit of current pulsation, chopping frequency, duty cycle and output voltage
// page-446
clear;
clc;
// given
Edc=110; // in V (dc source)
Ton=15; // in ms (conduction period of the thyristor)
Toff=12; // in ms (blocking period of the thyristor)
I0_max=300; // in A (maximum possible accelerating current)
I0_min=140; // in A (lower limit of current plusation)
// calculate
limit=I0_max-I0_min; // calculation of limit of current pulsation
T=Ton+Toff; // calculation of chopping period
f=1/(T*1E-3); // calculation of chopping frequency
alpha=Ton/T; // calculation of duty cycle
E0=alpha*Edc; // calculation of output voltage
printf("\nThe limit of current pulsation is \t %.f A",limit);
printf("\nThe chopping frequency is \t\t f=%.f Hz",f);
printf("\nThe duty cycle is \t\t\t alpha=%.2f ",alpha);
printf("\nThe output voltage is \t\t\t E0=%.2f V",E0);
// Note: the answer varies slightly due to precise calculation