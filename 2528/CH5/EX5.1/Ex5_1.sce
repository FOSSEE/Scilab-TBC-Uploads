//Chapter 5
//page 135
//Example no 5-1
clc;
clear;
G=20;       //in dB
A=10^(G/20);        //Ordinary gain
GBW=1*10^6;         //in Hz (from datasheet)
f2=GBW/A;
printf("Uper break frequency %.0f Hz",f2);
