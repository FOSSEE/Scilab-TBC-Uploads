//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.8(PAGENO 391)");

//given
f_m = 3.5*10^3//maximum frequency
r = 50*10^3//bit rate 
v_rms = .2//rms value of input signal
R = 1//resistance
x_max = 2//maximum peak voltage

//calculations
f_s = 2*f_m;//sampling frequency
v = r/f_s;//number of bits
P = v_rms^2 / R//Normalized signal power
SbyN = ((3*P) * 2^(2*v)) /(x_max^2);//signal to noise ratio
SbyN_dB = 10*log10(SbyN)//signal to noise ratio in dB

//results
printf("\n\ni.Signal to noise ratio in dB = %.2f dB",SbyN_dB);
printf("\n\nNote: They took number of bits as approximation from 7.142 to 8 so the SbyN changes ")
