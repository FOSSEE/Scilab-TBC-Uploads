clc();
clear;
//Given :
I0 = 10^-12; // in W/m^2
beta1 = 110; // in dB
beta2 = 150;// in dB
beta3 = 180; // in dB
// Intensity level = beta = 10*log10(I/I0)
I1 = 10^(beta1/10)*I0; // Intensity in W/m^2
I2 = 10^(beta2/10)*I0; // Intensity in W/m^2
I3 = 10^(beta3/10)*I0; // Intensity in W/m^2
printf("Amplified Rock Music : %.2f W/m^2 \n",I1);
printf("Jet plane  : %.1f x 10^3 W/m^2 \n",I2*10^-3);
printf("Rocket engine : %.1f x 10^6 W/m^2",I3*10^-6);
