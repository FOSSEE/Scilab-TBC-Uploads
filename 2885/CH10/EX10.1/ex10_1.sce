//Determine the gain of feedback amplifier
clear;
clc;
//soltion
//given

A=100;      //internal gain
B=0.1;//feedback factor
Af=A/(1+A*B);
printf("The gain of feedback amplifier %.2f",Af);
