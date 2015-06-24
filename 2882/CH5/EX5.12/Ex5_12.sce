//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 165
clear;
clc;

//Given Data
//Figure 5.26

RL=10;//load resistance in ohms which is dc resistance of primary coil of transistor
R=20D3;//base collector parallel resistance in ohms
B=90;//DC CE current gain beta

//Solution

S=(B+1)/(1+(B*RL)/(RL+R));//stability factor S
printf("S = %.2f",S);
