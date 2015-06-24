//Chapter 9
//page no 314
//given
clc;
clear all;
Tp=5;           //in microsec
fB=0.529/Tp/10^-6;   //channel bit rate
fBw=fB;             //channel bandwidth = channel bitrate when zero ISI and RZ input data is modulated
printf(" \n Maximum operating bandwidth =  %0.3f MHz",fB*10^-6);
L=50;           //in km
D=Tp*10^-6/L;   //Dispersion
printf(" \n Dispersion =  %0.1f micro sec/km",D*10^6);
fBwL=fBw*10^-6*L;        //bandwidth length product
printf(" \n Bandwidth length product(fBw*L) =  %0.1f MHz/km",fBwL);
