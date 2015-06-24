//Example 1.2(b)

clear;

clc;

Vi=1;//Input Voltage

R1=2*10^3;

R2=18*10^3;

a=10^4;//Open Loop Gain

A=(1+(R2/R1))*(1+(1+(R2/R1))/a)^(-1);//Overall Gain

Vo=Vi*A;//Output Voltage

printf("Output Voltage (Vo)=%.3f V",Vo);