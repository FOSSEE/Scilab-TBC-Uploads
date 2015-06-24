//Example 4.3(e)
//Program to determine the Rectification Efficiency of Centre-tap Full Wave Rectifier
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
Pdc=Idc^2*Rl;
Pac=Irms^2*(rd+Rl);
n=Pdc/Pac;//Rectification Efficiency
//Displaying The Results in Command Window
printf("\n\t The Rectification EFficiency n(eeta) = %f percent.",n*100);