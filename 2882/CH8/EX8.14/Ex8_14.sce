//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 290
clear;
clc;

//Given Data
//Figure 8.21

VCC=12;//collector supply voltage in volts
RL=4;//load resistance in ohms
Pmax=15;//maximum load power in watts
IC_max=2.5;//maximum collector current in amperes

//Solution

P1=2/%pi*VCC*IC_max;//power supplied in watts
e=Pmax/P1;//maximum efficiency of the amplifier
printf("Maximum efficiency ηmax = %.2f %%",e*100);
