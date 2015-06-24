//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.15(PAGENO 407)");

//given
f_m = 2*10^3//maximum frequency
f_s = 64*10^3//sampling frequency
f_M = 4*10^3//cut off frequency of low pass filter

//calculation
SNR_0 = (3 * f_s^3) /(8 * %pi^2 * f_m^2 * f_M);//signal to noise ratio of linear delta modulation system
SNR_dB = 10*log10(SNR_0);//SNR in dB

//result
printf("\n\nSignal to noise ratio of linear delta modulation system = %.2f dB",SNR_dB);
