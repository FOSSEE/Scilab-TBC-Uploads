// chapter 9
// example 9.10
// Determine fundamental output voltage and first five dominant harmonics
// page-574
clear;
clc;
// given
Edc=280; // in V (battery voltage)
M=0.8; // modulation index
Mf=24; // carrier ratio
// calculate
E0_fund=M*Edc/sqrt(2); // calculation of Fundamental output voltage
printf("\nThe Fundamental output voltage is \t E0_rms=%.2f V",E0_fund);
printf("\n\nThe first five dominant harmonics are \t n= ")
for n=2:2:6
    N1=n*Mf-1;
    N2=n*Mf+1;
    printf("%.f, %.f, ",N1,N2);
end
printf(" ... etc");
// Note: The answer varies slightly due to precise calculation