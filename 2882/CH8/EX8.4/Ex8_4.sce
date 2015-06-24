//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 272
clear;
clc;

//Given Data

RL=8;//load resistance in ohms
RL_eq=5D3;//equivalent resistance at primary in ohms

//Solution

k=sqrt(RL_eq/RL);//turns ratio N1/N2
printf("N1:N2 = %d:1",k);
