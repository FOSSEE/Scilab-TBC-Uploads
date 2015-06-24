// chapter 9
// example 9.2
// Compute fundamental output-voltage, first five harmonics of the output voltage,rms value by direct integration and harmonic summation method ,output rms and fundamental power  and transistor switch ratings
// page-547
clear;
clc;
// given
Edc=48; // in V (dc source)
R=10; // in ohm
// calculate
E1_fund=2*sqrt(2)/%pi*Edc; // calculation of fundamental component of the output-voltage waveform
printf("\n\nThe fundamental component of the output voltage is \t E1_fund=%.2f V\n",E1_fund);
E0_rms=Edc; // calculation of rms value of output voltage
printf("\nThe rms value of output voltage is \t\t\t E0_rms=%.f V\n",E0_rms);
E0_rms_H=E1_fund^2;
for n=3:2:11
    E0=E1_fund/n;
    printf("\n The %.f harmonic voltage is \t %.2f V",n,E0); // calculation of rms value of voltage by harmonic summation method
    E0_rms_H=E0_rms_H+E0^2;
end
E0_rms_H=sqrt(E0_rms_H); // calculation of rms value by harmonic summation method
printf("\n\nThe rms value determined by harmonic summation method is \t E0_rms=%.2f V",E0_rms_H);
P0_rms=E0_rms^2/R; // calculation of rms power consumed
printf("\n\nThe rms power consumed is \t\t\t\t\t P0_rms=%.2f W",P0_rms);
P0_fund=E1_fund^2/R; // calculation of fundamental power consumed
printf("\n\nThe fundamental power consumed is \t\t\t\t P0_fund=%.2f W",P0_fund);
V_CE0=Edc;
I_T_peak=Edc/R;
I_T_rms=Edc/(sqrt(2)*R);
I_T_avg=Edc/(2*R);
printf("\n\nThe transistor switch ratings are \t VCE0=%.f V \t I_T_peak=%.1f A \t I_T_rms=%.3f A \t I_T_avg=%.1f A",V_CE0,I_T_peak,I_T_rms,I_T_avg);
// Note: The answer varies slightly due to precise calculation