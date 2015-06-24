//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 345
clear;
clc;

//Given
//Figure 10.18

VCC=15;//collector supply voltage in volts
RC=1.8D3;//collector resistance in ohms
RB=330;//base resistance in ohms
RE=390;//emitter resistance in ohms
hfe=150;//forward current gain
hie=1000;//input resistance of transistor in ohms
Vi=5D-3;//input rms voltage in volts

//Solution

A=-hfe/(hie+RE);//open loop gain
B=-RE;//feedback factor beta
Afb=A/(1+A*B);//closed loop gain
AVfb=Afb*RC;//closed loop voltage gain
printf("Voltage gain of the circuit (Av)fb = %.2f\n ",AVfb);
