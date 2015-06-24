//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.5(PAGENO 389)");

//given
f_m = 3.4*10^3//maximum frequency in the signal
N =24//number of voice signals
r = 1.5*10^6//signaling rate
v  = 8//bits  of encoder

//calculations
BW = N * f_m//transmission bandwidth
r_1 = r/N//bit rate for one channel
f_s = r_1/v//sampling frquency

//results
printf("\n\ni.Transmission bandwidth  = %.2f Hz",BW);
printf("\n\nii.Sampling frequency = %.2f Hz or samples per second",f_s)
