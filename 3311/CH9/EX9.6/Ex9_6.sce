// chapter 9
// example 9.6
// Determine carrier ratio and the number of pulses per cycle, Fundamental output voltage, DF and HF of the output voltage and the order of first five significant harmonics
// page-569-570
clear;
clc;
// given
Edc_2=240; // in V (dc source)
fm=50; // in Hz (fundamental output frequency)
fc=1.2; // in KHz (carrier frequency)
M=0.8; // modulation index
// calculate
fc=fc*1E3;
Mf=fc/fm; // calculation of carrier ratio
p=Mf; // calculation of number of pulses per cycle
E0_fund=(1/sqrt(2))*M*Edc_2; // calculation of Fundamental output voltage
E0_rms=Edc_2;
DF=E0_fund/E0_rms; // calculation of DF of the output voltage
HF=sqrt(1/DF^2-1); // calculation of HF of the output voltage
printf("\nThe carrier ratio is \t\t\t\t Mf=%.f",Mf);
printf("\nThe number of pulses per cycle is \t\t p=%.f",p);
printf("\nThe distortion factor of the output voltage is \t DF=%.2f percent",DF*100);
printf("\nThe harmonic factor of the output voltage is \t HF=%.1f percent",HF*100);
printf("\n\n The order of first five harmonics are \n\nn=");
for n=0:2:2
    N1=Mf-n;
    N2=Mf+n;
    printf("%.f, %.f, ",N1,N2);
end
printf(" etc\n\nn=");
for n=1:2:3
    N1=2*Mf-n;
    N2=2*Mf+n;
    printf("%.f, %.f, ",N1,N2);
end
printf(" etc\n\nn=");
for n=0:2:2
    N1=3*Mf-n;
    N2=3*Mf+n;
    printf("%.f, %.f, ",N1,N2);
end
printf(" etc\n\nn=");
for n=1:2:3
    N1=4*Mf-n;
    N2=4*Mf+n;
    printf("%.f, %.f, ",N1,N2);
end
printf(" etc\n\nn=");
for n=0:2:4
    N1=5*Mf-n;
    N2=5*Mf+n;
    printf("%.f, %.f, ",N1,N2);
end
printf(" etc");
// Note: 1. The answer varies slightly due to precise calculation
//       2. The calculation of order of first five significant harmonics is wrong in the book due to calculation mistake