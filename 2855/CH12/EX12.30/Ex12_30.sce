




//Chapter 12
//page no 510
//given
clc;
clear ;
P1=2.75;            //in mW
NFd=5;           //in dB
bw=5;           //in GHz
G=10;         //in dB
hv=1.6*10^-19; //photon energy in J
N=1;        //no of amplifiers
NF=10^(NFd/10);     //amplifier noise figure
SNR=10*log10(P1*10^-3/[G*hv*bw*10^9*N*NF]);     //signal to nois eratio
printf("\n Spectral Noise density = %0.0f dB ",SNR);//result


