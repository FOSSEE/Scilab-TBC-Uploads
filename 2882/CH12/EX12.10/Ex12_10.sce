//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 393
clear;
clc;

//Given

fc=150D6;//frequency of carrier wave in hertz
fm=10D3;//frequency of modulating wave in hertz
df=25D3;//maximum frequency deviation

//Solution

disp("(i)");
B=df/fm;//modulation index for FM wave
printf("Modulation index β = %.1f",B);
disp("(ii)");
printf("The three significant side frequency pairs are:\n ");
printf("%d MHz ± %d kHz\n ",fc/10^6,fm/10^3);
printf("%d MHz ± %d kHz\n ",fc/10^6,fm*2/10^3);
printf("%d MHz ± %d kHz\n ",fc/10^6,fm*3/10^3);
