//Example 2.2.7 page 2.9

clc;
clear;
z= 10;
p0= 100*10^-6;  // input power
pz=5*10^-6;     //output power
alpha = 10*log10(p0/pz);    //total attenuation
printf("The overall signal attenuation is %.2f dB",alpha);
alpha = alpha/z;    // attenuation per km
printf("\n\nThe attenuation per Km is %.2f dB/Km",alpha);
z_new = 12;
splice_attenuation = 11*0.5;
cable_attenuation = alpha*z_new;
total_attenuation = splice_attenuation+cable_attenuation;
printf("\n\nThe overall signal attenuation for 12Kms is %.1f dB",total_attenuation);
