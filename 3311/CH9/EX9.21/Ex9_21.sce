// chapter 9
// exapmle 9.21
// Calculate rms output voltage at fundamental frequency, output power, average and peak current and peak reverse-blocking voltage
// page-618
clear;
clc;
// given
Edc=50; // in V (source voltage)
R=3; // in ohm
D=50; // in percent (universal for the circuit used)
// calculate
E1=2*Edc/(sqrt(2)*%pi); // calculation of rms output voltage at fundamental frequency
E_L=Edc/2; // calculation of rms line voltage
P0=E_L^2/R; // calculation of output power
I_peak=(Edc/2)/R; // calculation of peak current
I_av=(D/100)*I_peak; // calculation of average current
V_BR=2*Edc/2; // calculation of peak reverse-blocking voltage
printf("\nThe rms output voltage at fundamental frequency is \t E1=%.1f V",E1);
printf("\nThe output power is \t\t\t\t\t P0=%.2f W",P0);
printf("\nThe peak current is \t\t\t\t\t I_peak=%.2f A",I_peak);
printf("\nThe average current is \t\t\t\t\t I_av=%.3f A",I_av);
printf("\nThe peak reverse-blocking voltage is \t\t\t V_BR=%.f V",V_BR);
// Note: The answer vary slightly due to precise calculations and round off as done in the book