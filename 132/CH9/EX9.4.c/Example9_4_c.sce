//Example 9.4 (c)
//Program to Voltage Gain of the given Two Stage RC Coupled Amplifier
clear;
clc ;
close ;
//Given Data
Ro1=3.3*10^3; //Ohms
Ro2=2.2*10^3; //Ohms
hfe=120;
hie=1.1*10^3; //Ohms
R1=6.8*10^3; //Ohms
R2=56*10^3; //Ohms
R3=5.6*10^3; //Ohms
R4=1.1*10^3; //Ohms
//Calculation
Rac2=Ro1*Ro2/(Ro1+Ro2);
A2=-hfe*Rac2/hie;
Rac1=R1*R2*R3*R4/(R1*R2*R3+R2*R3*R4+R1*R3*R4+R1*R2*R4);
A1=-hfe*Rac1/hie;
A=A1*A2; //Overall Gain
//Displaying The Results in Command Window
printf("\n\t The Overall Gain, A = %f .",A);