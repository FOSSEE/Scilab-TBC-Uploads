clc();
clear;
//Given :
v = 343; // velocity of sound in m/s
lambda = 1; // wavelength in cm
// 1 cm = 1.0*10^-2 m
f = v/(lambda*10^-2); //frequency in Hz
printf("Frequency is %.1f kHz",f*10^-3);
