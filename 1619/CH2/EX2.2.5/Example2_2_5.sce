//Example 2.2.5 page 2.7

clc;
clear;
p0=150*10^-6;    //power input
z= 10;  //fibre length in km
pz= -38.2; // in dBm...
pz= 10^(pz/10)*1*10^-3;
alpha_1= 10/z *log10(p0/pz);        //attenuation in 1st window
printf("Attenuation is 1st window is %.2f dB/Km",alpha_1);
alpha_2= 10/z *log10(p0/(47.5*10^-6));        //attenuation in 2nd window
printf("\n\nAttenuation is 2nd window is %.2f dB/Km",alpha_2);
alpha_3= 10/z *log10(p0/(75*10^-6));        //attenuation in 3rd window
printf("\n\nAttenuation is 3rd window is %.2f dB/Km",alpha_3);
