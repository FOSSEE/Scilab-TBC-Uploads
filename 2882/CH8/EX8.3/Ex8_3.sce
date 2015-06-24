//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 271 and 272
clear;
clc;

//Given Data

k=10;//turn ratio of transformer
RL=8;//load resistance in ohms

//Solution

RL_eq=k^2*RL;//equivalent resistance at primary in ohms
printf("RL'' = %d ohms",RL_eq);
