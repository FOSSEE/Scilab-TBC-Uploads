//Calculate the percentage of output fed back to input
clear;
clc;
//soltion
//given

A=600;      //internal gain
Af=50;      //gain of feedback amplifier
B=(A/Af-1)/A;
printf("The percentage of output fed back to input= %.3f percent",B*100);
