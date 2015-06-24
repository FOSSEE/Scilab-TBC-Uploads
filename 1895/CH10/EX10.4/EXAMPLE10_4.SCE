//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 10
//DIGITAL MULTIPLEXERS
clear all;
clc;
printf("EXAMPLE 10.4(PAGENO 471)");

//given
N = 6//number of channels
f_m = 5*10^3//bandwidth of each channel

//calculations
SR1= 2*f_m//minimum sampling rate
SR = N*SR1//sampling rate
BW =N*f_m//minimum channel bandwidth

//results
printf("\n\nSignaling rate =%.2f bits per second",SR);
printf("\n\nMinimum channel bandwidth = %.2f Hz",BW);
