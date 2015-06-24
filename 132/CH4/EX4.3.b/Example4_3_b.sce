//Example 4.3(b)
//Program to determine the DC or Average Value of Current
clear;
clc ;
close ;
//Given Circuit Data
Rl=1*10^(3);//Ohms
rd=10;//Ohms
Vm=220; //Volts(Peak Value of Voltage)
//Calculation
Im=Vm/(rd+Rl);//Peak Value of Current
Idc=2*Im/%pi;//DC Value of Current
//Displaying The Results in Command Window
printf("\n\t The DC or Average Value of Current is = %f mA .",Idc/10^(-3));