//Calculate the gain of feedback amplifier and feedback factor
clear;
clc;
//soltion
//given

A=100;      //internal gain
N=20;//dB   //negative feedback
B=(10^(-N/(-20))-1)/A;      //taking antilog
Af=A/(1+A*B);
printf("The feedback factor= %.0f percent\n",B*100);
printf("The gain of the feedback amplifier is %.0f\n",Af);
