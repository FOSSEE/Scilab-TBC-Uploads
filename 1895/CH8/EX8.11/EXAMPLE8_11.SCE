//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.11(PAGENO 393)");

//given
v = 7//number of bits
r = 56*10^3//signaling rate

//calculations
SbyN = 1.8 +6*v//signal to noise ratio in dB
f_s = r/v//sampling frequency
f_m = f_s/2//maximum frequency which is less than or equal to obtained value

//results
printf("\n\nMaximum frequency = %.2f Hz",f_m)
