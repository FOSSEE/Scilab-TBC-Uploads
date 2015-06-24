//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.13(PAGENO 404)");

//given
f_m = 3*10^3//bandwidth or maximum frequency
n = 5//system operation times
delta = 250*10^-3//step size in volts
f_m1 = 2*10^3//given maximum frequency to calculate amplitude

//calculations
NR = 2 * f_m//nyquist rate
f_s = n * NR//sampling frequency
T_s = 1/f_s//sampling interval
A_m =(delta/(2 * %pi * f_m1* T_s))//Maximum amplitude

//result
printf("\n\nMaximum amplitude for 2KHz input sinusoid = %.2f V",A_m);
