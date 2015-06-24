//Example 4.3(a)
//Program to determine the Peak Value of Current
clear;
clc ;
close ;
//Given Circuit Data
Rl=1*10^(3);//Ohms
rd=10;//Ohms
Vm=220; //Volts(Peak Value of Voltage)
//Calculation
Im=Vm/(rd+Rl);//Peak Value of Current
//Displaying The Results in Command Window
printf("\n\t The Peak Value of Current is = %f mA .",Im/10^(-3));