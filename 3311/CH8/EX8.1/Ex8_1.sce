// chapter 8
// example 8.1
// Determine time ratio of the chopper
// page-439
clear;
clc;
// given
Edc=100; // in V
L=40; // in mH
R=5; // in ohm
I1=10, I2=12; // in A (current limits)
// calculate
Iavg=(I1+I2)/2;// calculation of average value of load current
Imax=Edc/R;// calculation of maximum value of load current
E0_av=Edc*(Iavg/Imax);// calculation of average value of voltage
// since Ton/(Ton+Toff)=E0_av/Edc, therefore we get
Ton_Toff=E0_av/(Edc-E0_av);// calculation of time ratio of the chopper
printf("\nThe time ratio of the chopper is \t Ton/Toff=%.3f ",Ton_Toff);