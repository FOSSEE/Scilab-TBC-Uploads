//Example 7.5
//Program to determine the overall power conversion efficiency

clear;
clc ;
close ;

//Given data
Pc=190*10^(-6);       //Watts - INPUT OPTICAL POWER
I=25*10^(-3);         //A - FORWARD CURRENT
V=1.5;                //V - FORWARD VOLTAGE

//Overall power conversion efficiency
P=I*V;
eeta_pc=Pc/P;

//Displaying the Result in Command Window
printf("\n\n\t Overall power conversion efficiency is %0.1f percent.",eeta_pc*100);