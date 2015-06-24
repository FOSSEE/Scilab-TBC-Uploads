clc();
clear;
//Given :
I0 = 10^-12; // in W/m^2
beta1 = 0; // in dB
beta2 = 60;// in dB
beta3 = 120; // in dB
// Intensity level = beta = 10*log10(I/I0)
I1 = 10^(beta1/10)*I0; // Intensity in W/m^2
I2 = 10^(beta2/10)*I0; // Intensity in W/m^2
I3 = 10^(beta3/10)*I0; // Intensity in W/m^2
printf("Hearing Threshold : %.1f x 10^-12 W/m^2 \n",I1*10^12);
printf("Speech Activity : %.1f x 10^-6 W/m^2 \n",I2*10^6);
printf("Pain Threshold : %.1f W/m^2",I3);
