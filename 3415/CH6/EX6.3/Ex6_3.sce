//fiber optic communications by joseph c. palais
//example 6.3
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
NFdb=3.2//noise figure in dB
SNRidb=50//input snr in dB
//to find
NF=10^(NFdb/10)//converting from decibels to ratios
SNRi=10^(SNRidb/10)//converting from decibels to ratios
SNRo=SNRi/NF//output signal to noise ratio
SNRodb=10*log10(SNRo)//converting from  ratios to decibels 
mprintf("Output SNR=%fdB",SNRodb)
