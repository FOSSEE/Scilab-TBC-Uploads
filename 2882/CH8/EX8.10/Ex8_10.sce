//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 288
clear;
clc;

//Given Data

VCC=12;//collector supply voltage in volts
RL=220;//load resistance in ohms

//Solution

PL_max=(VCC/RL)^2*RL/2;//maximum load power in watts
Pin=VCC*VCC/RL;//power delivered to load in watts
e=PL_max/Pin;//efficiency of amplifier
printf("Efficiency of the amplifier η = %.f %%",e*100);
