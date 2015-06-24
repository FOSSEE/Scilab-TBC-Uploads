//Example 4.3(d)
//Program to determine the Ripple Factor of Centre-tap Full Wave Rectifier
clear;
clc ;
close ;
//Given Circuit Data
Rl=1*10^(3); //Ohms
rd=10; //Ohms
Vm=220; //Volts(Peak Value of Voltage)
//Calculation
Im=Vm/(rd+Rl);//Peak Value of Current
Idc=2*Im/%pi;//DC Value of Current
Irms=Im/sqrt(2);//RMS Value of Current
r=sqrt((Irms/Idc)^2-1)//Ripple Factor
//Displaying The Results in Command Window
printf("\n\t The Ripple Factor r = %f .",r);