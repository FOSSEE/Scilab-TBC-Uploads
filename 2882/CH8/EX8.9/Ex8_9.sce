//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 288
clear;
clc;

//Given Data
//Figure 8.23

VCC=25;//collector supply voltage in volts
RL=220;//load resistance in ohms

//Solution

PCC=VCC^2/RL;//power developed in watts
printf("Power developed in amplifier PCC = %.2f Watts",PCC);
