//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 332
clear;
clc;

//Given

A=100;//open loop gain
D=0.05;//distortion
Vi=0.5;//input voltage in volts

//Solution

disp("(a)");
Vo=A*Vi;//output voltage in volts
printf("Output signal voltage = %d Volts",Vo);

disp("(b)");
DV=D*Vo;//distortion voltage in volts
printf("Distortion voltage = %.1f Volts",DV);

disp("(c)");
AOV=DV+Vo;//amplifier output voltage in volts
printf("Amplifier output voltage = %.1f Volts",AOV);
