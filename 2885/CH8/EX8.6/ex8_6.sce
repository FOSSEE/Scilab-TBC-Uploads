//Calculate the midband voltage gain and bandwidth of cascade amplifier
clear;
clc;
//soltion
//given
Am=8;         //midband voltage gain of individual MOSFET
BW=500*10^3//Hz
f2=BW;
n=4;
A2m=Am^n;
f2_=f2*(sqrt((2^(1/n))-1));
printf("Midband voltage gain = %.0f\n",A2m);
printf("Overall Bandwidth= %.1f kHz",f2_/1000);
