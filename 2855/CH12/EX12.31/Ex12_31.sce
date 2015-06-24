//Chapter 12
//page no 510
//given
clc;
clear all;
SNRdB=40;            //in dB
NFd=6;           //in dB
bw=4;           //in GHz
Gd=8;         //in dB
hv=1.6*10^-19; //photon energy in J
N=8; //no of amplifiers
SNR=10^(SNRdB/10);
NF=10^(NFd/10);     //amplifier noise figure
G=10^(Gd/10);           //amplifer gain
P1=10*(SNR/10)*[G*hv*bw*10^9*N*NF]/10^-3;        //optical power launched into fibre
printf("\n Optical power required , Pl = %0.1f mW ",P1);    //Result

