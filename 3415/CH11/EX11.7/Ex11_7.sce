//fiber optic communications by joseph c. palais
//example 11.7
//OS=Windows XP sp3
clc
clear all
//given
Pi=2e-12//signal power in W
K=1.38e-23//temperature in kelvin
deltaf=1e7//bandwidth in Hz
TA=300//Ambient temperature in Kelvin
T=454//noise temperature in Kelvin
PNT=1.66*10^-11//thermal noise power in W at 300K
G=10//power gain of amplifier in dB
//to find
Te=T+TA//equivalent noise temperature in Kelvin
PN=4*K*Te*deltaf//Noise power in W
SNR=Pi/PN//Signal to noise ratio
SNRdb=10*log10(SNR)//Signal to noise ratio in dB
mprintf("Output Signal to noise ratio=%fdB",SNRdb)
