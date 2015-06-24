//Example 9.2
//Program to Calculate Voltage at the Output Terminal of 
//Two Stage Direct Coupled Amplifier
clear;
clc ;
close ;
//Given Data
Vcc=30; //V
Vi=1.4; //V
Vbe=0.7; //V
B=300; //Beeta
R1=27*10^3; //Ohms
R2=680; //Ohms
R3=24*10^3; //Ohms
R4=2.4*10^3; //Ohms
//Calculation
Ve=Vi-Vbe;
Ie1=Vbe/R2;
Ic1=Ie1;
Vc1=Vcc-Ic1*R1;
Vb2=Vc1;
Ve2=Vb2-Vbe;
Ie2=Ve2/R4;
Ic2=Ie2;
Vc2=Vcc-Ic2*R3;
Vo=Vc2;
//Displaying The Results in Command Window
printf("\n\t The Voltage at the Output Terminal of Two Stage Direct Coupled Amplifier, Vo = %f V",Vo);