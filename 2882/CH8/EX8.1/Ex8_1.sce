//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 267
clear;
clc;

//Given Data

VCC=15;//battery voltage in volts
P_OUT=5;//output power in watts

//Solution

IC_MAX=P_OUT/VCC;//maximum collector current in amperes
printf("Maximum collector current IC = %d mA",IC_MAX*10^3);
