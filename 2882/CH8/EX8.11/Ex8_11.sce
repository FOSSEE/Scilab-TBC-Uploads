//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 289
clear;
clc;

//Given Data

VCC=12;//collector supply voltage in volts
RL=12;//load resistance in ohms

//Solution

PL_max=(VCC/RL)^2*RL/2;//power developed in watts
printf("Maximum value of load power = %.f Watts",PL_max);
