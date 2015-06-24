//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.7(PAGENO 210)");

//given
f_m = 4*10^3//modulation frequency
f_c = 125*10^3//carrier frequency

//claculation
BW = 2*f_m//bandwidth

//result
printf("\n\n   Bandwidth of a narrowband FM signal = %.2f Hz",BW);
