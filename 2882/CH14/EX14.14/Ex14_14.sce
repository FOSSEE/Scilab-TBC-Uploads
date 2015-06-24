//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 442 and 443
clear;
clc;

//Given
//Figure 14.33

V1=2;V2=1;V3=5.5;V4=2.2;V5=1.1//input voltages in volts
R=50D3;//input resistances R1,R2,R3,R4 in ohms
R5=10D3;//feedback resistance in ohms

//Solution

A=-R5/R;//gain for each input
disp("(a)");
Vo=A*(V1+V2+V3+V4+V5);//output voltage in volts
printf("Normal output voltage Vo = %.2f Volts",Vo);
disp("(b)");
Vo=A*(V1+V2+V4+V5);//output voltage in volts
printf("For R3 open, output voltage Vo = %.2f Volts",Vo);
