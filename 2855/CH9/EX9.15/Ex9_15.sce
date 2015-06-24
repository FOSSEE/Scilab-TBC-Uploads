//Chapter 9
//page no 314
//given
clc;
clear all;
Tp=2;           //in microsec
fB=0.529/Tp/10^-6;  //channel bit rate
fBw=fB;             //channel bandwidth = channel bitrate when zero ISI and RZ input data is modulated
printf(" \n Maximum operating bandwidth =  %0.2f MHz",fBw*10^-6);
L=50;           //in km
D=Tp*10^-6/L;   //Dispersion
printf(" \n Dispersion =  %0.0f ns/km",D*10^9);     //unit in book is wrong
fBwL=fBw*10^-6*L;         //bandwidth length product
printf(" \n Bandwidth length product(fBw*L) =  %0.0f MHz/km",fBwL);
