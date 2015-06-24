//Calculate the percentage of negative feedback to input
clear;
clc;
//soltion
//given

Adb=60;//dB      //internal gain in dB
A=10^(Adb/(20));      //taking antilog
Ro=12*10^3;//ohm      //output resistance
Rof=600;//ohm
B=(Ro/Rof-1)/A;
printf("The percentage of negative feedback to input= %.1f percent",B*100);
