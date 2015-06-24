//Example 1.11(a)

clear;

clc;

R1=1*10^6;

R2=1*10^6;

R3=100*10^3;

R4=1*10^3;

RL=2*10^3;//Load Resistance

A=-(R2/R1)*(1+(R3/R2)+(R3/R4));//Ideal Gain

printf("Ideal Gain of of the op amp (A)=%.2f V/V",A);