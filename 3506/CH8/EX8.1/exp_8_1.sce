//Optical Fiber communication by A selvarajan
//example 8.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
eta=0.8;//quantum efficiency of detection
Ps=2e-9;//received optical power in W
h=6.62*1e-34;//plancks constant
lambda=1500*1e-9//wavelength in m
c=3*1e8//velocity of light in m/s
new=c/lambda;//frequency in Hz
B=1e6;//Signal Bandwidth in Hz
SNR=(eta*Ps)/(2*h*new*B);//signal to noise ratio
SNRdB=10*log10(SNR)//signal to noise ratio in dB)
mprintf("signal to noise ratio=%f",SNR)//the answer in textbook is wrong
mprintf("\nsignal to noise ratio=%f dB",SNRdB)//the answer in textbook is wrong
