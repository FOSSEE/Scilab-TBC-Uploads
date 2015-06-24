//Example 8.6
//Program to find the Output Signal Voltage of the Amplifier
clear;
clc ;
close ;
//Given Circuit Data
Rl=12*10^3; //Ohms
Rg=1*10^6; //Ohms
Rs=1*10^3; //Ohms
Cs=25*10^(-6); //F
u=20;
rd=100*10^3; //Ohms
vi=0.1; //V
f=1*10^3; //Hz
//Calculation
Xcs=1/(2*%pi*f*Cs);
//As Xcs comes out to be much smaller than Rs, Rs is completely bypassed
A=u*Rl/(Rl+rd);
vo=A*vi;
//Displaying The Results in Command Window
printf("\n\t The Output Signal Voltage of the Amplifier is vo = %f V .",vo);