//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.3(PAGENO 387)");

//given
f_m = 4*10^3//maximum frequency or bans
x_max = 3.8//maximun input signal
P = 30*10^-3//average power of signal
SbyN_dB= 20//signal to noise ratio in db

//calculations
SbyN = exp((SbyN_dB/10)*log(10));
v = (log2((SbyN*(x_max)^2)/(3*P))/2);//number of bits required per sample
BW = 30*v*f_m//transmission channel bandwidth which is greater than or equal to obtained value
r=BW*2//wkt signalling rate is two times the transmission bandwidth

//results
printf("\n\ni.Number of bits required = %.2f bits",v);
printf("\n\nii.Bandwidth required for 30 PCM coders = %.2f Hz",BW);
printf("\n\niii.Signalling rate=%.2f bitspersecond",r);
printf("\n\nNote: In the textbook they took number of bits as approximation from 6.98 to 7\nso  thats why we get difference in the rest of calculations and also their is\n mistake in the calculation of sampling rate")
