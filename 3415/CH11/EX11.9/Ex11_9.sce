//fiber optic communications by joseph c. palais
//given
//example 11.9
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
alphadb=30//transmission loss in dB
Gi=1e3//gain
Fidb=3//noise figure of amplifier in dB
N=10//Number of amps
SNRin=1e8//signal to noise at transmitter at input
//to find
alpha=10^(alphadb/10)//transmission loss in normal scale
Fi=10^(Fidb/10)//noise figure of amplifier in normal scale
F=N*Fi*Gi//Noise Figure
SNRout=SNRin/F//output signal to noise
SNRoutdb=10*log10(SNRout)//output signal to noise in dB
mprintf("Output SNR=%fdB",SNRoutdb)

