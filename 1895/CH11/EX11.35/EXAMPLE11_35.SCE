//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.35(PAGENO 520)");
//given
B = 4000//bandwidth of AWGN channel
S = .1*10^-3//power of signal
neta = 2*10^-12//spectral dencity 
N = neta*B;//power 

//calculations 
C = B * log2(1 + (S/N));//capacity of channel

//result
printf("\n\nCapacity of channel = %.2f b/s",C);
