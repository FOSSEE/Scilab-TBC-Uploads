//Chapter 9
//page no 313
//given
clc;
clear all;
Tp=0.25;           //in microsec
fB=0.529/Tp/10^-6;      //channel bitrate
fBw=fB;             //channel bandwidth = channel bitrate when zero ISI and RZ input data is modulated
printf(" \n Maximum operating bandwidth =  %0.3f MHz",fBw*10^-6);
L=50;           //in km
D=Tp*10^-6/L;   //Dispersion
printf(" \n Dispersion =  %0.0f ns/km",D*10^9);
fBwL=fBw*10^-6*L;            //bandwidth length product
printf(" \n Bandwidth length product(fBw*L) =  %0.1f MHz/km",fBwL);
