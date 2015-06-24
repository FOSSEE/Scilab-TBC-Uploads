// chapter 8
// example 8.13
// Determine average and rms output voltage and form and ripple factor
// page-465
clear;
clc;
// given
Edc=220; // in V (dc source)
Ton=1; // in ms (ON period of chopper)
Toff=1.5; // in ms (OFF period of chopper)
// calculate
T=Ton+Toff; // calculation of chopping period
alpha=Ton/T; // calculation of duty cycle
E0=alpha*Edc; // calculation of average output voltage
E0_rms=sqrt(alpha)*Edc; // calculation of rms output voltage
FF=E0_rms/E0; // calculation of form factor
RF=sqrt(FF^2-1); // calculation of ripple factor
printf("\nThe average output voltage is \t E0=%.f V",E0);
printf("\nThe rms output voltage is \t E0_rms=%.2f V",E0_rms);
printf("\nThe form factor is \t\t FF=%.2f ",FF);
printf("\nThe ripple factor is \t\t RF=%.2f ",RF);

// Note: The answer varies slightly due to precise calculation upto 6 decimal digit