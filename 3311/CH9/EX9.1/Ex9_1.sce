// chapter 9
// example 9.1
// Compute rms value of output voltage, fundamental component of the output-voltage waveform, first five harmonics of the output voltage, fundamental power consumed,rms power consumed, rms value by harmonic summation method
// page-544
clear;
clc;
// given
Edc_2=96; // in V (dc source at center tapped)
R=10; // in ohm
// calculate
Edc=2*Edc_2;
E0_rms=Edc/2; // calculation of rms value of output voltage
printf("\nThe rms value of output voltage is \t\t\t E0_rms=%.f V",E0_rms);
E1_fund=sqrt(2)/%pi*Edc; // calculation of fundamental component of the output-voltage waveform
printf("\n\nThe fundamental component of the output voltage is \t E1_fund=%.2f V\n",E1_fund);
P0_fund=E1_fund^2/R; // calculation of fundamental power consumed
P0_rms=E0_rms^2/R; // calculation of rms power consumed
E0_rms_H=E1_fund^2;
for n=3:2:11
    E0=E1_fund/n;
    printf("\n The %.f harmonic voltage is \t %.2f V",n,E0); // calculation of rms value of voltage by harmonic summation method
    E0_rms_H=E0_rms_H+E0^2;
end
E0_rms_H=sqrt(E0_rms_H); // calculation of rms value by harmonic summation method
printf("\n\nThe fundamental power consumed is \t\t\t\t P0_fund=%.2f W",P0_fund);
printf("\nThe rms power consumed is \t\t\t\t\t P0_rms=%.2f W",P0_rms);
printf("\n\nThe rms value determined by harmonic summation method is \t E0_rms=%.2f V",E0_rms_H);
printf("\n\n The two values of rms voltages as determined are almost equal.");
// Note: The answer varies slightly due to precise calculation