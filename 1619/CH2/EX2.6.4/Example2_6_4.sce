//Example 2.6.4 page 2.35

clc;
clear;

lamda = 0.85*10^-6;
rms_spect_width = 0.0012*lamda;
sigma_m= rms_spect_width*1*98.1*10^-3;
sigma_m=sigma_m*10^9; // converting in ns...
printf("The Pulse Broadening due to material dispersion is %.2f ns/Km",sigma_m);
