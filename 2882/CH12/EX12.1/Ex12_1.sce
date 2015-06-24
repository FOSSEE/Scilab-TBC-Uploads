//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 378
clear;
clc;

//Given

Emax=10;//maximum peak to peak voltage of an AM signal
Emin=3;//minimum peak to peak voltage of an AM signal

//Solution

m=(Emax-Emin)/(Emax+Emin);//modulation index m
printf("Percent modulation = %.2f %%\n\n ",m*100);
Ac=(Emax-Emin)/(2*m);//amplitude of unmodulated carrier wave
printf("Amplitude of unmodulated carrier wave Ac = %.1f Volts",Ac);
