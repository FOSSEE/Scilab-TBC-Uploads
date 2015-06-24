//Example 12.7
//Program to estimate the maximum bit rate that may be achieved on 
//the link when using NRZ format

clear;
clc ;
close ;

//Given data
L=8;                             //km - LENGTH OF FIBER LINK
Ts=8*10^(-9);                    //s - SOURCE RISE TIME
Dn=5*10^(-9);                    //s/km - INTERMODAL RISE TIME
Dc=1*10^(-9);                    //s/km - INTRAMODAL RISE TIME
Td=6*10^(-9);                    //s - DETECTOR RISE TIME
Tn=Dn*L;
Tc=Dc*L;

//Total Rise Time
Tsyst=1.1*sqrt(Ts^2+Tn^2+Tc^2+Td^2);

//Maximum bit rate
Bt= 0.7/Tsyst;

//Displaying the Result in Command Window
printf("\n\n\t Maximum bit rate, Bt(max) is %0.1f Mbit/s which for NRZ is equivalent to a 3 dB optical bandwidth of %0.1f Mbit/s.",Bt/10^6,Bt/10^6/2);