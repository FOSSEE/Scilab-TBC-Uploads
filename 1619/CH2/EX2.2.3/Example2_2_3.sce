//Example 2.2.3 page 2.6

clc;
clear;

z=8;    //fibre length
p0= 120*10^-6;  //power launched
pz= 3*10^-6;
alpha= 10*log10(p0/pz); // overall attenuation
printf("The overall attenuation is %.2fdB",alpha);
alpha = alpha/z;    // attenuation per km
alpha_new= alpha *10;   // attenuation for 10kms
total_attenuation = alpha_new + 9;  //9dB because of splices
printf("\n\nThe total attenuation is : %d dB",total_attenuation);
