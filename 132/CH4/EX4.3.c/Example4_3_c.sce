//Example 4.3(c)
//Program to determine the RMS Value of Current
clear;
clc ;
close ;
//Given Circuit Data
Rl=1*10^(3); //Ohms
rd=10; //Ohms
Vm=220; //Volts(Peak Value of Voltage)
//Calculation
Im=Vm/(rd+Rl);//Peak Value of Current
Irms=Im/sqrt(2);//RMS Value of Current
//Displaying The Results in Command Window
printf("\n\t The RMS Value of Current is = %f mA .",Irms/10^(-3));